#!/bin/bash

# Script to build Debug versions for both Linux and Windows (MinGW-w64).

echo "Building Debug version for Linux..."
./build-debug-linux.sh

echo
echo "Building Debug version for Windows (MinGW-w64)..."
./build-debug-windows-mingw.sh

echo
echo "Debug builds for all platforms completed."