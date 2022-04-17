#!/usr/bin/env zsh

set -e

if ! type brew &>/dev/null
then
  echo "Install Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
else
  echo "Homebrew already installed..."
fi

# Homebrew Bundle
echo "Setup Chezmoi"
brew install chezmoi
chezmoi init --apply --verbose https://github.com/michaelmerrild/dotfiles.git

echo "Install packages"
brew bundle --file=$HOME/.config/brew/Brewfile --cleanup

echo "Configure MacOS"
$HOME/.config/macos/macos.zsh

echo "Bootstrap completed"
