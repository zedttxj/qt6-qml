#!/bin/bash
set -e

mkdir -p build
cd build
rm -rf *

echo "==> Configuring CMake..."
cmake -D CMAKE_PREFIX_PATH=/usr/lib64/cmake/Qt6 -D CMAKE_EXPORT_COMPILE_COMMANDS=ON ..

cd ..
ln -sf build/compile_commands.json compile_commands.json

cd build
echo "==> Building project..."
cmake --build .

echo "==> Launching CounterApp..."
./CounterApp
