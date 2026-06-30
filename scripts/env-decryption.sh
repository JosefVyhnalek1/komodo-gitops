#!/bin/bash
export PATH="$HOME/.sops-bin:/usr/local/bin:$PATH"

export SOPS_AGE_KEY="/home/vyhnalek/sops-key"

cd repo-1

sops -d .enc.env > .env

cd server-beta

sops -d .override.enc.env > .override.env