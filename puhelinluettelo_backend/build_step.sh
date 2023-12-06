#!/bin/bash

echo "Build script"

# add the commands here
cd .. && npm install
cd puhelinluettelo_backend && npm install
rm -rf build && cd .. && npm run build && cp -r build puhelinluettelo_backend