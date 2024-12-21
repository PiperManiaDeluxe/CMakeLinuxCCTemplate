cmake_minimum_required(VERSION 3.30.3)
set(CMAKE_CXX_STANDARD 20)

project(CMakeLinuxCCTemplate)

# Find all header files in the src directory and subdirectories.
file(GLOB_RECURSE HEADER_FILES CONFIGURE_DEPENDS "${CMAKE_SOURCE_DIR}/src/*.h")

# Find all source files in the src directory and subdirectories.
file(GLOB_RECURSE SOURCE_FILES CONFIGURE_DEPENDS "${CMAKE_SOURCE_DIR}/src/*.cpp")

# STATIC stuff (Windows)
if (${CMAKE_SYSTEM_NAME} MATCHES "Windows")
        set(BUILD_FOR_WIN TRUE)
endif()
option(STATIC_BUILD "Build a static binary." ${BUILD_FOR_WIN})

if (STATIC_BUILD)
        set(CMAKE_EXE_LINKER_FLAGS "-static")
        set(CMAKE_FIND_LIBRARY_SUFFIXES ".a" CONFIG)
        set(BUILD_SHARED_LIBS OFF)
endif()

add_executable(CMakeLinuxCCTemplate ${SOURCE_FILES} ${HEADER_FILES})