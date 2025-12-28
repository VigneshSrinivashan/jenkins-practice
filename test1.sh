#!/bin/bash
set -e

echo "Current workspace:"
pwd
ls -l

SRC_DIR="src"
BUILD_DIR="build"

if [ ! -d "$SRC_DIR" ]; then
  echo "Source directory not found"
  exit 1
fi

mkdir -p "$BUILD_DIR"
cp -r "$SRC_DIR"/* "$BUILD_DIR"/

echo "Build completed successfully"
