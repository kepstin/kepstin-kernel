#!/bin/bash

arch="$(uname -m)"

scripts/kconfig/merge_config.sh \
	"fedora-kernel/kernel-${arch}-fedora.config" \
	"gentoo-kernel-config/base.config" \
	"gentoo-kernel-config/no-debug.config" \
	"config"
