#!/usr/bin/env bash
set -euo pipefail

if [ "$(id -u)" -ne 0 ]; then
  echo "Non root user. Exiting." >&2
  exit 1
fi

username="${1:?Usage: user.sh <username>}"

if id -u "$username" >/dev/null 2>&1; then
  echo "User $username already exists. Exiting." >&2
  exit 1
fi

adduser --disabled-password --gecos "$username"

if [[ $2 == "sudo" ]]; then
  usermod -aG sudo "$username"
fi
