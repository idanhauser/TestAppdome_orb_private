#!/bin/bash

echo "${APPFILE}"
mkdir output
VAR="${SIGNOVERRIDS}"
ls
if [[ -n "$VAR" ]]; then
    VAR="${GOOGLEPLAYSIGN}"
    if [ "$VAR" = true ]; then
        python3 ./appdome-api-python/appdome-api-python/appdome_api.py --api_key "${APPDOME_API_KEY}" --fusion_set_id "${FUSIONSET}" --app files/$(basename "$APPFILE")k --sign_on_appdome --keystore files/keystore.keystore --keystore_pass "${KEYSTORE_PASS}" --keystore_alias "${KEYSTORE_ALIAS}" --key_pass "${KEYSTORE_KEY_PASS}" --sign_overrides files/sign_overrides.json --google_play_signing --output ./output/appdome_vanilla.apk --certificate_output ./output/certificate.pdf
    else
        python3 ./appdome-api-python/appdome-api-python/appdome_api.py --api_key "${APPDOME_API_KEY}" --fusion_set_id "${FUSIONSET}" --app files/$(basename "$APPFILE") --sign_on_appdome --keystore files/keystore.keystore --keystore_pass "${KEYSTORE_PASS}" --keystore_alias "${KEYSTORE_ALIAS}" --key_pass "${KEYSTORE_KEY_PASS}" --sign_overrides files/sign_overrides.json --output ./output/appdome_vanilla.apk --certificate_output ./output/certificate.pdf
    fi
else
    VAR="${GOOGLEPLAYSIGN}"
    if [ "$VAR" = true ]; then
        python3 ./appdome-api-python/appdome-api-python/appdome_api.py --api_key "${APPDOME_API_KEY}" --fusion_set_id "${FUSIONSET}" --app files/$(basename "$APPFILE") --google_play_signing --sign_on_appdome --keystore files/keystore.keystore --keystore_pass "${KEYSTORE_PASS}" --keystore_alias "${KEYSTORE_ALIAS}" --key_pass "${KEYSTORE_KEY_PASS}" --output ./output/appdome_vanilla.apk --certificate_output ./output/certificate.pdf
    else
        python3 ./appdome-api-python/appdome-api-python/appdome_api.py --api_key "${APPDOME_API_KEY}" --fusion_set_id "${FUSIONSET}" --app files/$(basename "$APPFILE") --sign_on_appdome --keystore files/keystore.keystore --keystore_pass "${KEYSTORE_PASS}" --keystore_alias "${KEYSTORE_ALIAS}" --key_pass "${KEYSTORE_KEY_PASS}" --output ./output/appdome_vanilla.apk --certificate_output ./output/certificate.pdf
    fi
fi