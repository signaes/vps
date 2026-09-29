#!/usr/bin/env bash
set -euo pipefail

sudo ufw allow www
sudo ufw allow https

sudo ufw status
