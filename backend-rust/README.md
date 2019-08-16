# Fluid – decentralized twitter-like feed built on Fluence with SQLite

## Workshop
Workshop scenario could be found [here](https://fluence.dev/page/workshop-fluid-decentralized-twitter-like-feed-built-on-fluence)

## How to run steps
There's a `run.sh` script in each step, but if you'd like to run it manually, here's the instructions
```shell

# Go into directory of the desired step (step3 used as example)
cd step3-finished-app

# Download SQLite WASM module
mkdir wasm
wget https://github.com/fluencelabs/sqlite/releases/download/v0.2.0_w/sqlite3_0.2.0.wasm -O ./wasm/sqlite3_0.2.0.wasm

# Build fluid WASM module
cargo +nightly build --target wasm32-unknown-unknown --release
cp target/wasm32-unknown-unknown/release/*.wasm ./wasm/

# Run it all on 30000 port with default Fluence API
docker run -it --rm -v $(pwd)/wasm:/code -p 30000:30000 fluencelabs/frun:latest
```

Also take a look at how to use frun [here](https://fluence.dev/docs/debugging) and look up HTTP API [here](https://fluence.dev/reference)
