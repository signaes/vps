#!/usr/bin/env bash
set -euo pipefail

cd /etc/ssh
sudo cp sshd_config sshd_config.dist

echo "Change PasswordAuthentication to `no`"
echo "Change PermitRootLogin to `no`"
echo "Change PermitEmptyPasswords to `no`"
echo "Change KerberosAuthentication to `no`"
echo "Change GSSAPIAuthentication to `no`"
echo "Change MaxAuthTries"

sudo vi sshd_config

sudo systemctl restart ssh
