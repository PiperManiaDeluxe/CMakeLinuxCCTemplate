#!/bin/bash

# Script to build Debug and Release versions for both Linux and Windows (MinGW-w64).

echo "--- Building for Linux ---"
./build-all-linux.sh

echo
echo "--- Building for Windows (MinGW-w64) ---"
./build-all-windows.sh

echo
echo "Builds for all platforms completed."