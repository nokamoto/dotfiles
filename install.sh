#!/bin/bash

# Install Google Cloud SDK
# https://cloud.google.com/sdk/docs/install-sdk
cd ~

GCLOUD_SDK_VERSION="435.0.1"
GCLOUD_SDK_TAR="google-cloud-cli-435.0.1-linux-x86_64.tar.gz"
curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/${GCLOUD_SDK_TAR}
tar -xf ${GCLOUD_SDK_TAR}

./google-cloud-sdk/install.sh -q --bash-completion=true --path-update=true --rc-path=~/.bashrc

rm -rf ${GCLOUD_SDK_TAR}

cd
