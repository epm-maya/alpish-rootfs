#!/bin/sh
set -ex

sudo ./alpine-make-rootfs \
	--branch 'v3.12' \
	--packages 'curl openssl openssh-client iptables xz git apk-tools' \
	--script-chroot \
	rootfs.tar.gz -- content/alpine.sh

sha256sum rootfs.tar.gz > rootfs.tar.gz.sha256

cat rootfs.tar.gz.sha256
