#!/bin/bash


mkdir files
echo "Downloading android file"
echo $("${FINGERPRINT}")
wget -V
VAR="${SIGNOVERRIDS}"
if [[ -n $VAR ]]; then
    echo "Downloading sign overrides"
    wget "$VAR" -O .files/sign_overrides.json
fi
ls files