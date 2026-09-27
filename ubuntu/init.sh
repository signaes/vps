#!/usr/bin/env bash
set -euo pipefail

if [ "$(id -u)" -ne 0 ]; then
  echo "Non root user. Exiting." >&2
  exit 1
fi

echo "Allowing ssh"
ufw allow OpenSSH

echo "Enabling Firewall"
ufw --force enable

ufw status
