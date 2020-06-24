#!/bin/bash

if command -v apt-get; then
  apt-get update
  
  command -v git || apt-get install -y git
  command -v vim || apt-get install -y vim
fi

cd ~
git clone https://github.com/andrewferrier/dotfiles-basic.git
cd dotfiles-basic
./setup
