#!/bin/bash


mkdir output
VAR="${SIGNOVERRIDS}"
ls
if [[ -z "$VAR" ]]; then
    python3 ./appdome-api-python/appdome-api-python/appdome_api.py --api_key "${APPDOME_API_KEY}" --fusion_set_id "${FUSIONSET}" --app files/vanilla.ipa --auto_dev_private_signing --provisioning_profiles files/provisioning_profiles/ --sign_overrides files/sign_overrides.json --output ./output/appdome_vanilla.ipa --certificate_output ./output/certificate.pdf
else
    python3 ./appdome-api-python/appdome-api-python/appdome_api.py --api_key "${APPDOME_API_KEY}" --fusion_set_id "${FUSIONSET}" --app files/vanilla.ipa --auto_dev_private_signing --provisioning_profiles files/provisioning_profiles/ --output ./output/appdome_vanilla.ipa --certificate_output ./output/certificate.pdf
fi