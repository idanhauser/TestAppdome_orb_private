#!/bin/bash


mkdir output
VAR="${SIGNOVERRIDES}"
ls
if [[ -z "$VAR" ]]; then
    VAR="${GOOGLEPLAYSIGN}"
    if [ "$VAR" = true ]; then
        python3 ./appdome-api-python/appdome-api-python/appdome_api.py --api_key "${APPDOME_API_KEY}" --fusion_set_id "${FUSIONSET}" --app files/"$(basename "$APPFILE")" -auto_dev_private_signin --signing_fingerprint  "${FINGERPRINT}" --sign_overrides files/"$(basename "$SIGNOVERRIDES")" --google_play_signing --output ./output/"${OUTPUT}" --certificate_output ./output/certificate.pdf
    else
        python3 ./appdome-api-python/appdome-api-python/appdome_api.py --api_key "${APPDOME_API_KEY}" --fusion_set_id "${FUSIONSET}" --app files/"$(basename "$APPFILE")" -auto_dev_private_signin --signing_fingerprint  "${FINGERPRINT}" --sign_overrides files/"$(basename "$SIGNOVERRIDES")" --output ./output/"${OUTPUT}" --certificate_output ./output/certificate.pdf
    fi
else
    VAR="${GOOGLEPLAYSIGN}"
    if [ "$VAR" = true ]; then
        python3 ./appdome-api-python/appdome-api-python/appdome_api.py --api_key "${APPDOME_API_KEY}" --fusion_set_id "${FUSIONSET}" --app files/"$(basename "$APPFILE")" -auto_dev_private_signin --signing_fingerprint "${FINGERPRINT}" --google_play_signing --output ./output"${OUTPUT}" --certificate_output ./output/certificate.pdf
    else
        python3 ./appdome-api-python/appdome-api-python/appdome_api.py --api_key "${APPDOME_API_KEY}" --fusion_set_id "${FUSIONSET}" --app files/"$(basename "$APPFILE")" -auto_dev_private_signin --signing_fingerprint "${FINGERPRINT}" --output ./output/"${OUTPUT}" --certificate_output ./output/certificate.pdf
    fi
fi