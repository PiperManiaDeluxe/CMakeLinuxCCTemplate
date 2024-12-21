#!/bin/bash

# Script to build the CMakeLinuxCCTemplate project for Linux in Debug mode.

# Create the build directory if it doesn't exist
mkdir -p build-debug-linux
cd build-debug-linux

# Configure the project with CMake in Debug mode
cmake -DCMAKE_BUILD_TYPE=Debug ..

# Build the project
make -j$(nproc)

echo "Debug build for Linux completed. Executable is located in: $(pwd)/CMakeLinuxCCTemplate"

cd ..