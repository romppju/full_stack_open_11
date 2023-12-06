#!/bin/bash

echo "Build script"

# add the commands here
cd .. && npm install
cd puhelinluettelo_backend && npm install
cd .. && npm run build && @powershell Copy-Item build -Recurse puhelinluettelo_backend