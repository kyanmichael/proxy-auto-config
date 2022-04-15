#!/usr/bin/env bash

echo 'Enabling proxy'
networksetup -setautoproxyurl 'Wi-Fi' 'http://127.0.0.1:5252/proxy-auto-config.pac'

echo 'Displaying proxy status'
networksetup -getautoproxyurl 'Wi-Fi'
