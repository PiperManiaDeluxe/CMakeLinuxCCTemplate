#!/bin/bash

# Script to build both Debug and Release versions for Windows (MinGW-w64).

echo "Building Debug version for Windows (MinGW-w64)..."
./build-debug-windows-mingw.sh

echo
echo "Building Release version for Windows (MinGW-w64)..."
./build-release-windows-mingw.sh

echo
echo "Windows (MinGW-w64) builds completed."