#!/bin/bash


mkdir output
VAR="${GOOGLEPLAYSIGN}"
ls
if [[ -n "$VAR" ]]; then
    VAR="${GOOGLEPLAYSIGN}"
    if [ "$VAR" = true ]; then
        python3 ./appdome-api-python/appdome-api-python/appdome_api.py --api_key "${APPDOME_API_KEY}" --fusion_set_id "${FUSIONSET}" --app files/vanilla.apk --private_signing --signing_fingerprint  "${FINGERPRINT}" --sign_overrides .files/sign_overrides.json --google_play_signing --output ./output/appdome_vanilla.apk --certificate_output ./output/certificate.pdf
    else
        python3 ./appdome-api-python/appdome-api-python/appdome_api.py --api_key "${APPDOME_API_KEY}" --fusion_set_id "${FUSIONSET}" --app files/vanilla.apk --private_signing --signing_fingerprint  "${FINGERPRINT}" --sign_overrides .files/sign_overrides.json --output ./output/appdome_vanilla.apk --certificate_output ./output/certificate.pdf
    fi
else
    VAR="${GOOGLEPLAYSIGN}"
    if [ "$VAR" = true ]; then
        python3 ./appdome-api-python/appdome-api-python/appdome_api.py --api_key "${APPDOME_API_KEY}" --fusion_set_id "${FUSIONSET}" --app files/vanilla.apk --private_signing --signing_fingerprint "${FINGERPRINT}" --google_play_signing --output ./output/appdome_vanilla.apk --certificate_output ./output/certificate.pdf
    else
        python3 ./appdome-api-python/appdome-api-python/appdome_api.py --api_key "${APPDOME_API_KEY}" --fusion_set_id "${FUSIONSET}" --app files/vanilla.apk --private_signing --signing_fingerprint "${FINGERPRINT}" --output ./output/appdome_vanilla.apk --certificate_output ./output/certificate.pdf
    fi
fi