#!/bin/bash

# Configuración del prompt de Bash
ln -sf $PWD/bash/bash_prompt ~/.bash_prompt

echo 'if [ -f ~/.bash_prompt ]; then
    . ~/.bash_prompt
fi
' >> ~/.bashrc

echo "Configurado prompt de Bash"

# Configuración general de Git
ln -sf $PWD/git/gitconfig ~/.gitconfig

echo "Configurado Git"

# Configuración de Gnome Terminal
dconf load /org/gnome/terminal/legacy/profiles:/ < $PWD/terminal/gnome-terminal-profiles.dconf

echo "Configurado Gnome Terminal"

# Configuración de Visual Studio Code
ln -sf $PWD/vsc/settings.json ~/.config/Code/User/settings.json
ln -sf $PWD/vsc/keybindings.json ~/.config/Code/User/keybindings.json                                                                   

echo "Configurado Visual Studio Code"