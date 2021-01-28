#!/bin/bash

if ! command -v git >/dev/null; then
  if command -v apt-get >/dev/null; then
    apt-get update && apt-get install -y git
  elif command -v yum >/dev/null; then
    yum install git
  else
    echo "Don't know how to install git."
    exit 1
  fi
fi

cd ~
git clone https://github.com/andrewferrier/dotfiles-basic.git
cd dotfiles-basic
./setup
