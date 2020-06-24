#!/bin/bash

if command -v apt-get; then
  if ! command -v git; then
    apt-get update && apt-get install -y git
  fi
fi

cd ~
git clone https://github.com/andrewferrier/dotfiles-basic.git
cd dotfiles-basic
./setup
