#!/bin/bash

# Copyright (C) 2022 Calvin Walton
# Distributed under the terms of the GNU General Public License v2
# See the LICENSE file for details.

arch="$(uname -m)"
config_path="$(dirname $0)"

scripts/kconfig/merge_config.sh \
	"${config_path}/fedora-kernel/kernel-${arch}-fedora.config" \
	"${config_path}/gentoo-kernel-config/base.config" \
	"${config_path}/gentoo-kernel-config/no-debug.config" \
	"${config_path}/config" \
	"${config_path}/config-${arch}"
