#!/usr/bin/env bash

set -e
set -o pipefail

command -v jq >/dev/null 2>&1 || {
    echo >&2 "jq is not installed, wouldn't parse responses"
}

command -v base64 >/dev/null 2>&1 || {
    echo >&2 "base64 is not installed, wouldn't parse responses"
}

mkdir -p wasm

# Download SQLite
SQLITE="sqlite3_0.2.0.wasm"
if [ ! -f "wasm/$SQLITE" ]; then
  echo "Downloading $SQLITE..."
  wget -q https://github.com/fluencelabs/sqlite/releases/download/v0.2.0_w/$SQLITE -O ./wasm/$SQLITE
fi

# Build fluid WASM module
echo "Building to WASM..."
npm --silent install
npm --quiet run flbuild
cp build/fluid.wasm ./wasm/
echo

# Run it all on 30000 port with default Fluence API
echo "Running..."
docker rm -f frun &>/dev/null || true
echo 'docker run -d --name frun --rm -v "$(pwd)/wasm:/code" -p 30000:30000 fluencelabs/frun:latest'
docker run -d --name frun --rm -v "$(pwd)/wasm:/code" -p 30000:30000 fluencelabs/frun:latest >/dev/null
echo

# Wait for app to be initialized
sleep 1 && (docker logs -f frun 2>&1 &) | grep -q initialized && sleep 1



############################################
### *** --- === Sending post === --- *** ###
############################################

# Assign json to a variable using heredoc technique
JSON=$(cat <<JSON
{"action":"Post","message":"I'm nice, you're nice, it's nice!","username":"random_joe"}
JSON
)

echo -e "Sending post: $JSON"

# Send json as a request, and receive result
RESPONSE=$(curl -s 'http://localhost:30000/apps/0/tx' --data $'sessionId/0\n'"$JSON" --compressed)
RESPONSE=$(echo "$RESPONSE" | jq -r .result.data | base64 --decode 2>/dev/null || echo "$RESPONSE")

# Parse json or print response as is
echo "$RESPONSE" | jq . 2>/dev/null || echo "$RESPONSE"


##############################################
### *** --- === Fetching posts === --- *** ###
##############################################

# Assign json to a variable using heredoc technique
JSON=$(cat <<JSON
{"action":"Fetch", "handle": "random_joe", "offset": 0, "count": 10}
JSON
)

echo -e "Fetching posts: $JSON"

# Send json as a request, and receive result
RESPONSE=$(curl -s 'http://localhost:30000/apps/0/tx' --data $'sessionId/1\n'"$JSON" --compressed)
RESPONSE=$(echo "$RESPONSE" | jq -r .result.data | base64 --decode 2>/dev/null || echo "$RESPONSE")

# Parse json or print response as is
echo "$RESPONSE" | jq . 2>/dev/null || echo "$RESPONSE"


# Remove frun container
echo -e "Stopping..."
docker rm -f frun >/dev/null
