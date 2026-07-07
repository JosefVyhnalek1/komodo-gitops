#!/bin/bash

export PATH="$HOME/.sops-bin:/usr/local/bin:$PATH"
export SOPS_AGE_KEY_FILE="/home/vyhnalek/sops-key"

APP_NAME="$1"
ENVIRONMENT="$2"


sops -d "envs/$APP_NAME.enc.env" > "apps/$APP_NAME/.env" #hodit to potom do složky repo-1 abych se zbavil ../.. - dát to vedle compose filu
chmod 600 "apps/$APP_NAME/.env"

if [ -n "$ENVIRONMENT" ]; then
  sops -d "envs/$ENVIRONMENT/$APP_NAME.enc.env" > "apps/$APP_NAME/.$ENVIRONMENT.env" # tady ještě bude muset být název jinej
  chmod 600 "apps/$APP_NAME/.$ENVIRONMENT.env"
fi
