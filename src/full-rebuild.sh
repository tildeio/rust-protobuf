#!/bin/sh -ex

target=${1:-"x86_64-unknown-linux-gnu"}

./rebuild.sh $target
./regenerate.sh
./rebuild.sh
rustc -O --target=$target --rlib --test lib/protobuf.rs

# vim: set ts=4 sw=4 et:
