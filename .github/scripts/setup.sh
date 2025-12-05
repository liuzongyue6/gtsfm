#!/bin/bash

##########################################################
# GTSFM dependencies previously installed using uv
##########################################################

echo "Running .github/scripts/setup.sh..."

##########################################################
# Git submodules
##########################################################

cd $GITHUB_WORKSPACE
git submodule update --init --recursive

##########################################################
# Download pre-trained model weights
##########################################################

cd $GITHUB_WORKSPACE
./scripts/download_model_weights.sh
