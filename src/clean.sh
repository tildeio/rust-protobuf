#!/bin/sh -ex

find . -name '*.dylib' -o -name '*.dSYM' -o -name '*.bin' -o -name '*.so' -o -name '*.rlib' | xargs rm -rf

# vim: set ts=4 sw=4 et:
