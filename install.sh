#!/bin/bash
export CMAKE_CXX_FLAGS="-march=x86-64"
export CC=/usr/bin/gcc
export CXX=/usr/bin/g++
cmake -B build \
    -D CMAKE_PREFIX_PATH="${CONDA_PREFIX}" \
    -D CMAKE_INSTALL_PREFIX="${CONDA_PREFIX}" \
    -D XEUS_OCTAVE_DISABLE_ARCH_NATIVE=1 \
    -D XEUS_OCTAVE_DISABLE_TUNE_GENERIC=0 \
    -D CMAKE_EXPORT_COMPILE_COMMANDS=1 \
    -D CMAKE_BUILD_TYPE=Debug
#   -D CMAKE_BUILD_TYPE=Release
cmake --build build
cmake --install build


