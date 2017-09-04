#!/bin/bash

# Update full
sudo eopkg up -y
# Install developer packages
sudo eopkg it -c system.devel -y
# Install my apps
sudo eopkg it arcanist gdm geany atom git gimp inkscape evopop-gtk-theme evopop-icon-theme -y

#Gsettings
#Theme/icons
gsettings set org.gnome.desktop.wm.preferences theme 'EvoPop'
gsettings set org.gnome.desktop.interface gtk-theme 'EvoPop-Azure'
#gedit
gsettings set org.gnome.gedit.preferences.editor scheme 'oblivion'
gsettings set org.gnome.gedit.preferences.editor create-backup-copy false
gsettings set org.gnome.gedit.preferences.editor tabs-size "uint32 4"
gsettings set org.gnome.gedit.preferences.editor auto-indent true
gsettings set org.gnome.gedit.preferences.editor insert-spaces true
# terminal
gsettings set org.gnome.Terminal.Legacy.Settings default-show-menubar false
#git config
git config --global user.name "Peter Cornelis"
git config --global user.email "poltertec@gmail.com"
sudo git config --system core.editor nano
# Google Chrome
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/network/web/browser/google-chrome-stable/pspec.xml &&
sudo eopkg it google-chrome-*.eopkg && sudo rm  google-chrome-*.eopkg
