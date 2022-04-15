#!/usr/bin/env bash

echo 'Disabling proxy'
networksetup -setautoproxystate 'Wi-Fi' off

echo 'Displaying proxy status'
networksetup -getautoproxyurl 'Wi-Fi'
