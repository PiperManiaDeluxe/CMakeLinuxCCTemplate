#!/bin/bash

# Script to build both Debug and Release versions for Linux.

echo "Building Debug version for Linux..."
./build-debug-linux.sh

echo
echo "Building Release version for Linux..."
./build-release-linux.sh

echo
echo "Linux builds completed."