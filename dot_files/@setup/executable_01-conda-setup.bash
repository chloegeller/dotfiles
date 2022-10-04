#!/usr/bin/env bash

arch="$(uname)-$(uname -m)"
OS=$([ $(uname) = "Darwin" ] && echo "MacOSX" || echo "Linux")

CONDA_URL="https://repo.anaconda.com/miniconda/Miniconda3-latest-${OS}-x86_64.sh"

case "${arch}" in
  "Darwin-x86_64" | "Darwin-arm64")
    echo "- Installing MiniForge..."
    brew install miniforge
    ;;
  "Linux-x86_64")
    echo "- Installing Miniconda..."
    quiet "curl -fsSL -o ${HOME}/miniconda.sh ${CONDA_URL}"
    chmod +x "${HOME}/miniconda.sh"
    bash ${HOME}/miniconda.sh -b -p ${APPDIR}/miniconda
    rm ${HOME}/miniconda.sh
esac 

echo "- Update conda \`base\` environment..."
source ${DOTS}/.profile
quiet "conda install mamba -y"
quiet "mamba env update -n base -f ${DOTS}/@setup/env.yml"
