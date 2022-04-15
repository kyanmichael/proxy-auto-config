#!/usr/bin/env bash

echo '------------------------ PROXY CONFIG -------------------------'
cat www/proxy-auto-config.pac

echo '---------- STARTING PROXY CONFIG SERVER ON PORT 5252 ----------'
node_modules/.bin/http-server --port 5252 www
