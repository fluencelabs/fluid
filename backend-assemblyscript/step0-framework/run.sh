#!/usr/bin/env bash

set -e

mkdir -p wasm

# Build fluid WASM module
echo "Building..."
npm --silent install
npm --quiet run flbuild
cp build/*.wasm ./wasm/
echo

# Run it all on 30000 port with default Fluence API
echo "Running..."
docker rm -f frun &>/dev/null || true
echo 'docker run -d --name frun --rm -v "$(pwd)/wasm:/code" -p 30000:30000 fluencelabs/frun:latest'
docker run -d --name frun --rm -v "$(pwd)/wasm:/code" -p 30000:30000 fluencelabs/frun:latest >/dev/null
echo

# Wait for app to be initialized
sleep 1 && (docker logs -f frun 2>&1 &) | grep -q initialized && sleep 1

# Send our username to the application
REQUEST="$USER"
echo -e "Sending request: $REQUEST"
echo "curl -s 'http://localhost:30000/apps/1/tx' --data $'sessionId/0\n'"$REQUEST" --compressed"
echo

RESPONSE=$(curl -s 'http://localhost:30000/apps/1/tx' --data $'sessionId/0\n'"$REQUEST" --compressed | jq -r .result.data | base64 -D)

echo -e "$RESPONSE\n"

# Remove frun container
echo -e "Stopping..."
docker rm -f frun >/dev/null
