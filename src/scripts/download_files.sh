#!/bin/bash


mkdir files
echo "Downloading android file"
wget "${APPFILE}" -O files/vanilla.apk
if [[ -n $VAR ]]; then
    echo "Downloading sign overrides"
    wget "$VAR" -O .files/sign_overrides.json
else
    echo "no sign overrides"
fi
ls files