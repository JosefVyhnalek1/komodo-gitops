#!/bin/bash

export PATH="$HOME/.sops-bin:/usr/local/bin:$PATH"
export SOPS_AGE_KEY_FILE="/home/vyhnalek/sops-key"

APP_NAME="$1"
ENVIRONMENT="$2"

cd envs
 
sops -d "$APP_NAME.enc.env" > "$APP_NAME.env" #hodit to potom do složky repo-1 abych se zbavil ../.. - dát to vedle compose filu

if [ -n "$ENVIRONMENT" ]; then
  cd $ENVIRONMENT
  sops -d "$APP_NAME.enc.env" > "$APP_NAME.env" # tady ještě bude muset být název jinej
fi
