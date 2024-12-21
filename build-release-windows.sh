#!/bin/bash

# Script to build the CMakeLinuxCCTemplate project for Windows in Release mode using MinGW-w64.
# Explicitly uses x86_64-w64-mingw32-cmake and make.
# Requires MinGW-w64 to be installed and the compiler binaries in your PATH.

# Create the build directory if it doesn't exist
mkdir -p build-release-windows-mingw
cd build-release-windows-mingw

# Configure the project with CMake for MinGW-w64 in Release mode
x86_64-w64-mingw32-cmake -G "Unix Makefiles" \
                            -DCMAKE_BUILD_TYPE=Release \
                            -DCMAKE_C_COMPILER="x86_64-w64-mingw32-gcc" \
                            -DCMAKE_CXX_COMPILER="x86_64-w64-mingw32-g++" ../

# Build the project
make -j$(nproc)

echo "Release build for Windows (MinGW-w64) completed. Executable is located in: $(pwd)/CMakeLinuxCCTemplate.exe"

cd ..