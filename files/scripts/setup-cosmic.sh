#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

# From https://github.com/ublue-os/cosmic/blob/main/Containerfile
curl -Lo /etc/yum.repos.d/_copr_ryanabx-cosmic.repo https://copr.fedorainfracloud.org/coprs/ryanabx/cosmic-epoch/repo/fedora-$(rpm -E %fedora)/ryanabx-cosmic-epoch-fedora-$(rpm -E %fedora).repo
rpm-ostree install cosmic-desktop
systemctl disable gdm || true
systemctl disable sddm || true
systemctl enable cosmic-greeter || true
