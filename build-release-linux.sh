#!/bin/bash

# Script to build the CMakeLinuxCCTemplate project for Linux in Release mode.

# Create the build directory if it doesn't exist
mkdir -p build-release-linux
cd build-release-linux

# Configure the project with CMake in Release mode
cmake -DCMAKE_BUILD_TYPE=Release ..

# Build the project
make -j$(nproc)

echo "Release build for Linux completed. Executable is located in: $(pwd)/CMakeLinuxCCTemplate"

cd ..