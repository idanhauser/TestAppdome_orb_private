#!/bin/bash

name: Build Sign Download
command: |
mkdir output
VAR=$<< pipeline.parameters.sign-overrides >>
if [[ -n $VAR ]]; then
    VAR="${GOOGLEPLAYSIGN}"
    if [ $VAR = true ]; then
    python3 ./appdome-api-python/appdome-api-python/appdome_api.py --api_key $APPDOME_API_KEY --fusion_set_id << pipeline.parameters.fusion-set-id >> --app ./files/vanilla.apk --private_signing --signing_fingerprint  << pipeline.parameters.signing-fingerprint >> --sign_overrides ./files/sign_overrides.json --google_play_signing --output ./output/appdome_vanilla.apk --certificate_output ./output/certificate.pdf
    else
    python3 ./appdome-api-python/appdome-api-python/appdome_api.py --api_key $APPDOME_API_KEY --fusion_set_id << pipeline.parameters.fusion-set-id >> --app ./files/vanilla.apk --private_signing --signing_fingerprint  << pipeline.parameters.signing-fingerprint >> --sign_overrides ./files/sign_overrides.json --output ./output/appdome_vanilla.apk --certificate_output ./output/certificate.pdf
    fi
else
    VAR="${GOOGLEPLAYSIGN}"
    if [ $VAR = true ]; then
    python3 ./appdome-api-python/appdome-api-python/appdome_api.py --api_key $APPDOME_API_KEY --fusion_set_id << pipeline.parameters.fusion-set-id >> --app ./files/vanilla.apk --private_signing --signing_fingerprint  << pipeline.parameters.signing-fingerprint >> --google_play_signing --output ./output/appdome_vanilla.apk --certificate_output ./output/certificate.pdf
    else
    python3 ./appdome-api-python/appdome-api-python/appdome_api.py --api_key $APPDOME_API_KEY --fusion_set_id << pipeline.parameters.fusion-set-id >> --app ./files/vanilla.apk --private_signing --signing_fingerprint  << pipeline.parameters.signing-fingerprint >> --output ./output/appdome_vanilla.apk --certificate_output ./output/certificate.pdf
    fi
fi