#!/bin/sh
rm -rf ./node_modules
npm cache clean --force
npm install
npm run dev