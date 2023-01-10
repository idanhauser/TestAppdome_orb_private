#!/bin/bash


mkdir files
echo "Downloading android file"
wget "${APPFILE}" -O files/vanilla.apk
if [[ -n "${SIGNOVERRIDS}" ]]; then
    echo "Downloading sign overrides"
    wget "${SIGNOVERRIDS}" -O files/sign_overrides.json
fi
if [[ -n "${KEYSTORE}" ]]; then
    echo "Downloading keystore"
    wget "${KEYSTORE}" -O files/keystore.keystore
fi
ls files