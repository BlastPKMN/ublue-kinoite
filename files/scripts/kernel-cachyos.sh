#!/usr/bin/env bash

set -oue pipefail

# remove Fedora kernel and cleanup files
dnf -y remove kernel "kernel-*"
rm -rf /usr/lib/modules/*

# enable the COPR repository
dnf -y copr enable bieszczaders/kernel-cachyos

# install the CachyOS kernel and bypass scripts
dnf -y install kernel-cachyos --setopt=tsflags=noscripts

# build modules, run depmod and generate initramfs
VER=$(ls /lib/modules)
depmod -a "$VER"
dracut --kver "$VER" \
    --force \
    --add ostree \
    --no-hostonly \
    --reproducible \
    "/usr/lib/modules/$VER/initramfs.img"

# remove the COPR repository
rm -f /etc/yum.repos.d/*copr*.repo
