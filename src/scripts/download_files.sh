#!/bin/bash


mkdir files
echo "Downloading android file"
wget "${APPFILE}" -O appdome_runner/files/vanilla.apk
VAR="${SIGNOVERRIDS}"
if [[ -n $VAR ]]; then
    echo "Downloading sign overrides"
    wget "$VAR" -O .appdome_runner/files/sign_overrides.json
fi
ls files