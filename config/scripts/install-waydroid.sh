#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

# Install bazzite waydroid just file
curl -Lo /usr/share/ublue-os/just/82-bazzite-waydroid.just https://raw.githubusercontent.com/ublue-os/bazzite/main/system_files/desktop/shared/usr/share/ublue-os/just/82-bazzite-waydroid.just
echo 'import "/usr/share/ublue-os/just/82-bazzite-waydroid.just"' >> /usr/share/ublue-os/justfile

# Install waydroid-choose-gpu.sh script used by bazzite just file
curl -Lo /usr/bin/waydroid-choose-gpu https://raw.githubusercontent.com/KyleGospo/waydroid-scripts/main/waydroid-choose-gpu.sh
chmod +x /usr/bin/waydroid-choose-gpu
