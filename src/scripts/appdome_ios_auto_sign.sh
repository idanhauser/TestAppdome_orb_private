#!/bin/bash


mkdir output
VAR="${SIGNOVERRIDS}"
ls
if [[ -z "$VAR" ]]; then
    python3 ./appdome-api-python/appdome-api-python/appdome_api.py --api_key "${APPDOME_API_KEY}" --fusion_set_id "${FUSIONSET}" --app files/"$(basename "$APPFILE")" --sign_on_appdome --keystore files/"$(basename "$KEYSTORE")" --keystore_pass "${KEYSTORE_PASS}" --provisioning_profiles files/provisioning_profiles/ --entitlements files/entitlements/ --sign_overrides files/"$(basename "$SIGNOVERRIDS")" --output ./output/"${OUTPUT}" --certificate_output ./output/certificate.pdf
else
    python3 ./appdome-api-python/appdome-api-python/appdome_api.py --api_key "${APPDOME_API_KEY}" --fusion_set_id "${FUSIONSET}" --app files/"$(basename "$APPFILE")" --sign_on_appdome --keystore files/"$(basename "$KEYSTORE")" --keystore_pass "${KEYSTORE_PASS}" --provisioning_profiles files/provisioning_profiles/ --entitlements files/entitlements/ --output ./output/"${OUTPUT}" --certificate_output ./output/certificate.pdf
fi