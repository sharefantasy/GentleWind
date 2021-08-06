#!/usr/bin/env bash

CONFIG=$HOME/.config/nvim
mkdir -p $CONFIG/undo $CONFIG/spell $CONFIG/autoload

rm -rf $CONFIG/lua
if [[ $OSTYPE == "darwin"* ]]; then
    export MACOSX_DEPLOYMENT_TARGET=10.15
fi
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
