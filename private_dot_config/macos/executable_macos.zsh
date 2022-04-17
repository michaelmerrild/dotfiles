#!/usr/bin/env zsh

# Dock
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock tilesize -int 55
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0
defaults write com.apple.dock persistent-apps -array
defaults write com.apple.dock static-only -bool true
defaults write com.apple.dock show-recents -bool false

# Finder
defaults write com.apple.Finder AppleShowAllFiles -bool true
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# System
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"
defaults write "Apple Global Domain" AppleInterfaceStyle -string "Dark"
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Status Menu
defaults write com.apple.Siri "StatusMenuVisible" -int 0
defaults write com.apple.Spotlight "NSStatusItem Visible Item-0" -int 0

killall "Dock" &> /dev/null
killall "Finder" &> /dev/null
killall "SystemUIServer" &> /dev/null