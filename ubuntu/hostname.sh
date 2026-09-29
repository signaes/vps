#!/usr/bin/env bash
set -euo pipefail

sudo hostnamectl

hostname="${1:?Usage: hostname.sh <hostname>}"

sudo hostnamectl set-hostname "$hostname"
