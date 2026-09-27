#!/usr/bin/env bash
set -euo pipefail

if [ "$(id -u)" -ne 0 ]; then
  echo "Non root user. Exiting." >&2
  exit 1
fi

sudo apt update
sudo apt upgrade

sudo reboot
