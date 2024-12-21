#!/bin/bash

# Script to build Release versions for both Linux and Windows (MinGW-w64).

echo "Building Release version for Linux..."
./build-release-linux.sh

echo
echo "Building Release version for Windows (MinGW-w64)..."
./build-release-windows-mingw.sh

echo
echo "Release builds for all platforms completed."