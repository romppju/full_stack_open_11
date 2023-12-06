#!/bin/bash

echo "Build script"

# add the commands here
cd .. && npm install
ls
cd puhelinluettelo_backend && npm install
npm run build:ui