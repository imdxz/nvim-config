#!/usr/bin/env bash

set -euo pipefail

set -x

NVIM_VER="0.12.4"
NVIM_URL="https://github.com/neovim/neovim/archive/refs/tags/v${NVIM_VER}.tar.gz"


SCRATCH_DIR="${SCRATCH_DIR:-/tmp/nvim}"
PREFIX_DIR="${1}"

echo "PREFIX DIR: ${PREFIX_DIR}"
mkdir -p $PREFIX_DIR 

echo "SCRATCH DIR: ${SCRATCH_DIR}"
mkdir -p $SCRATCH_DIR && cd $SCRATCH_DIR

curl -OL "${NVIM_URL}"

tar xfz "${SCRATCH_DIR}/v${NVIM_VER}.tar.gz"

cd "${SCRATCH_DIR}/neovim-${NVIM_VER}"

time make CMAKE_BUILD_TYPE=RelWithDebInfo CMAKE_INSTALL_PREFIX="${PREFIX_DIR}" -j4
time make install

set +x 
