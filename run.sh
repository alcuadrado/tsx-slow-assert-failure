#!/bin/sh
hyperfine --warmup 5 --ignore-failure 'node ./without-tsx.js' 'node --import tsx/esm with-tsx.ts'
