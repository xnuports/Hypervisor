#!/bin/sh
set -e
clang -fmodules -Os -g -target arm64-apple-macos12 -o Hypervisor -shared hv.c
codesign --sign - --force Hypervisor
