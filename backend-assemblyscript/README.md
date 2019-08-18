## AssemblyScript – How to run steps
There's a `run.sh` script in each step, but if you'd like to run it manually, here's the instructions
```shell

# Go into directory of the desired step (step3 used as example)
cd step3-finished-app

# Download SQLite WASM module
mkdir wasm
wget https://github.com/fluencelabs/sqlite/releases/download/v0.2.0_w/sqlite3_0.2.0.wasm -O ./wasm/sqlite3_0.2.0.wasm

# Build fluid WASM module
npm install
npm run flbuild
cp build/fluid.wasm wasm/fluid.wasm

# Run it all on 30000 port with default Fluence API
docker run -it --rm -v $(pwd)/wasm:/code -p 30000:30000 fluencelabs/frun:latest
```

Also take a look at how to use frun [here](https://fluence.dev/docs/debugging) and look up HTTP API [here](https://fluence.dev/reference)
