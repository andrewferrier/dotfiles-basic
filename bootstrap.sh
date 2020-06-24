#!/bin/bash

if ! command -v git; then
  if command -v apt-get; then
    apt-get update && apt-get install -y git
  else
    echo "Don't know how to install git."
    exit 1
  fi
fi

cd ~
git clone https://github.com/andrewferrier/dotfiles-basic.git
cd dotfiles-basic
./setup
