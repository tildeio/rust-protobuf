#!/bin/sh -ex

./clean.sh

target=${1:-"x86_64-unknown-linux-gnu"}

rustc -O --rlib --target=$target lib/protobuf.rs

if [ $target = "x86_64-unknown-linux-gnu" ];
then
    rustc -L lib ./protobuf-bin-gen-rust.rs
    rustc -L lib ./protoc-gen-rust.rs
fi

# vim: set ts=4 sw=4 et:
