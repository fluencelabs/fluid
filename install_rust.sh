#!/usr/bin/env bash

# Install Rust
curl https://sh.rustup.rs -sSf | sh -s -- -y

# Install nightly toolchain
rustup toolchain install nightly

# Add WASM target
rustup target add wasm32-unknown-unknown --toolchain nightly

