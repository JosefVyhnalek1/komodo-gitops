#!/bin/bash

export PATH="$HOME/.sops-bin:/usr/local/bin:$PATH"
export SOPS_AGE_KEY_FILE="/home/vyhnalek/sops-key"

APP_NAME="$1"
ENVIRONMENT="$2"

cd envs

sops -d "$APP_NAME.enc.env" > "$APP_NAME.env"

if [ -n "$ENVIRONMENT" ]; then
  cd $ENVIRONMENT
  sops -d "$APP_NAME.enc.env" > "$APP_NAME.env"
fi