#!/usr/bin/env bash
set -euo pipefail

sudo apt update
sudo apt install fail2ban

sudo systemctl start fail2ban
sudo systemctl enable fail2ban

cd /etc/fail2ban

sudo cp ./fail2ban/jail.local jail.local

sudo systemctl restart fail2ban
