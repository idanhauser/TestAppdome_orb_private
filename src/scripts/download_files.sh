#!/bin/bash


mkdir files
echo "Downloading android file"
wget "${APPFILE}" -O files/vanilla.apk
if [[ -z "${SIGNOVERRIDS}" ]]; then
    echo "Downloading sign overrides"
    wget "${SIGNOVERRIDS}" -O .files/sign_overrides.json
if [[ -z "${KEYSTORE}" ]]; then
    echo "Downloading keystore"
    wget "${KEYSTORE}" -O .files/keystore.p12
fi
ls files