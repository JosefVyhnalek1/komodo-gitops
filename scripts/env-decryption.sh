#!/bin/bash
export PATH="$HOME/.sops-bin:/usr/local/bin:$PATH"

export SOPS_AGE_KEY_FILE="/home/vyhnalek/sops-key"

cd envs

sops -d example-application.enc.env > example-application.env

cd int

sops -d example-application.enc.env > example-application.env