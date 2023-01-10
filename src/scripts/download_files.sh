#!/bin/bash


mkdir files
echo "Downloading android file"
wget "${APP_PATH}" -O files/vanilla.apk
VAR= "${SIGNOVERRIDS}"
if [[ -n $VAR ]]; then
    echo "Downloading sign overrides"
    wget $VAR -O ./files/sign_overrides.json
ls files