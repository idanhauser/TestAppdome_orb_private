#!/bin/bash


mkdir output
VAR="${SIGNOVERRIDS}"
ls
if [[ -z "$VAR" ]]; then
    python3 ./appdome-api-python/appdome-api-python/appdome_api.py --api_key "${APPDOME_API_KEY}" --fusion_set_id "${FUSIONSET}" --app files/"$(basename "$APPFILE")" --private_signing --provisioning_profiles files/"$(basename "$PROVISIONING_PROFILES")" --sign_overrides files/"$(basename "$SIGNOVERRIDS")" --output ./output/"${OUTPUT}" --certificate_output ./output/certificate.pdf
else
    python3 ./appdome-api-python/appdome-api-python/appdome_api.py --api_key "${APPDOME_API_KEY}" --fusion_set_id "${FUSIONSET}" --app files/"$(basename "$APPFILE")" --private_signing --provisioning_profiles files/"$(basename "$PROVISIONING_PROFILES")" --output ./output/"${OUTPUT}" --certificate_output ./output/certificate.pdf
fi