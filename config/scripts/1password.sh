#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

sh -c 'echo -e "[1password]\nname=1Password Stable Channel\nbaseurl=https://downloads.1password.com/linux/rpm/stable/\$basearch\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=https://downloads.1password.com/linux/keys/1password.asc" > /etc/yum.repos.d/1password.repo'

# rpm-ostree install 1password 1password-cli
# 1Password will be installed in /opt which will be linked to /usr/lib/opt but for some reason the folder will be empty
