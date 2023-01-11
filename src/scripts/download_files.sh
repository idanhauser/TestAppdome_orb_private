#!/bin/bash


mkdir files
echo "Downloading android file"
if [[ "${APPFILE}" == *".ipa" ]]; then
    wget "${APPFILE}" -O files/vanilla.ipa
elif [[ "${APPFILE}" == *".apk" ]]; then
    wget "${APPFILE}" -O files/vanilla.apk
else
    echo "Error: Unsupported file format"
fi
if [[ -n "${SIGNOVERRIDS}" ]]; then
    echo "Downloading sign overrides"
    wget "${SIGNOVERRIDS}" -O files/sign_overrides.json
fi
if [[ -n "${KEYSTORE}" ]]; then
    echo "Downloading keystore"
    if [[ "${KEYSTORE}" == *".keystore" ]]; then
        wget "${KEYSTORE}" -O files/keystore.keystore
    elif [[ "${KEYSTORE}" == *".p12" ]]; then
        wget "${KEYSTORE}" -O files/keystore.p12
    else
        echo "Error: Unsupported file format"
    fi
fi
if [[ -n "${PROVISIONING_PROFILES}" ]]; then
    echo "Downloading provisioning-profiles"
    wget "${PROVISIONING_PROFILES}" -O files/provisioning-profiles/
fi
if [[ -n "${ENTITLEMENTS}" ]]; then
    echo "Downloading entitlements"
    wget "${ENTITLEMENTS}" -O files/entitlements/
fi
ls files
APPFILE=$(basename "$APPFILE")
echo "${APPFILE}"