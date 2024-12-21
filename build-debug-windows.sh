#!/bin/bash

# Script to build the CMakeLinuxCCTemplate project for Windows in Debug mode using MinGW-w64.
# Explicitly uses x86_64-w64-mingw32-cmake and make.
# Requires MinGW-w64 to be installed and the compiler binaries in your PATH.

# Create the build directory if it doesn't exist
mkdir -p build-debug-windows-mingw
cd build-debug-windows-mingw

# Configure the project with CMake for MinGW-w64 in Debug mode
x86_64-w64-mingw32-cmake -G "Unix Makefiles" \
                          -DCMAKE_BUILD_TYPE=Debug \
                          -DCMAKE_C_COMPILER="x86_64-w64-mingw32-gcc" \
                          -DCMAKE_CXX_COMPILER="x86_64-w64-mingw32-g++" ../

# Build the project
make -j$(nproc)

echo "Debug build for Windows (MinGW-w64) completed. Executable is located in: $(pwd)/CMakeLinuxCCTemplate.exe"

cd ..