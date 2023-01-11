#!/bin/bash


mkdir files
echo "Downloading android file"
wget "${APPFILE}" -O files/"$(basename "$APPFILE")"
if [[ -z "${SIGNOVERRIDS}" ]]; then
    echo "Downloading sign overrides"
    echo "${SIGNOVERRIDS}"
    wget "${SIGNOVERRIDS}" -O files/"$(basename "$SIGNOVERRIDS")"
fi
if [[ -n "${KEYSTORE}" ]]; then
    echo "Downloading keystore"
    wget "${KEYSTORE}" -O files/"$(basename "$KEYSTORE")"
fi
if [[ -n "${PROVISIONING_PROFILES}" ]]; then
    echo "Downloading provisioning-profiles"
    wget "${PROVISIONING_PROFILES}" -O files/"$(basename "$PROVISIONING_PROFILES")"
fi
if [[ -n "${ENTITLEMENTS}" ]]; then
    echo "Downloading entitlements"
    wget "${ENTITLEMENTS}" -O files/"$(basename "$ENTITLEMENTS")"
fi
ls files


