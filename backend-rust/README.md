# How to run
```shell
wget https://github.com/fluencelabs/sqlite/releases/download/v0.1.0_w/sqlite3_0.1.0.wasm
mkdir wasm
mv sqlite3_0.1.0.wasm ./wasm/
cargo +nightly build --target wasm32-unknown-unknown --release
cp target/wasm32-unknown-unknown/release/*.wasm ./wasm/
docker run -it --rm -v $(pwd)/wasm:/code -p 30000:30000 fluencelabs/frun:latest
```


curl 'http://localhost:30000/apps/1/tx' --data $'OF9JW2c2vfFp/0\nyo' --compressed
