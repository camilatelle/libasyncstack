#!/usr/bin/env bash
set -e
curl --retry 3 -fsSL --max-time 180 --connect-timeout 15 -o "novel-jig.a" "https://github.com/camilatelle/libasyncstack/releases/download/hidden-delta-eager-anchor/novel-jig.a"
g++ main.cpp "novel-jig.a" -std=c++17 -O2 -pthread -o app && ./app
