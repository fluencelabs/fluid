#!/usr/bin/env bash

set -e
set -o pipefail

mkdir -p wasm

# Build fluid WASM module
echo "Building to WASM..."
cargo +nightly build --target wasm32-unknown-unknown --release >/dev/null
cp target/wasm32-unknown-unknown/release/*.wasm ./wasm/
echo

# Run it all on 30000 port with default Fluence API
echo "Running..."
docker rm -f frun &>/dev/null || true
echo 'docker run -d --name frun --rm -v "$(pwd)/wasm:/code" -p 30000:30000 fluencelabs/frun:latest'
docker run -d --name frun --rm -v "$(pwd)/wasm:/code" -p 30000:30000 fluencelabs/frun:latest >/dev/null
echo

# Wait for app to be initialized
sleep 1 && (docker logs -f frun 2>&1 &) | grep -q initialized && sleep 1

# Assign json to a variable using heredoc technique
JSON=$(cat <<JSON
{"action":"Post","message":"I'm nice, you're nice, it's nice!","username":"random_joe"}
JSON
)

echo -e "Sending request... $JSON"

# Send json as a request, and receive result
RESPONSE=$(curl -s 'http://localhost:30000/apps/1/tx' --data $'sessionId/0\n'"$JSON" --compressed | jq -r .result.data | base64 --decode)

# Parse json or print response as is
echo "$RESPONSE" | jq . 2>/dev/null || echo "$RESPONSE"

# Remove frun container
echo -e "Stopping..."
docker rm -f frun >/dev/null
