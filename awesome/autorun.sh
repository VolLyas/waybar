#!/bin/sh

THEME="Arc-Dark"
ICONS="Tela-dark"
FONT="JetBrainsMono Nerd Font 12"
CURSOR="Breeze"

SCHEMA="gsettings set org.gnome.desktop.interface"

apply_themes(){
    ${SCHEMA} gtk-theme "$THEME"
    ${SCHEMA} icon-theme "$ICONS"
    ${SCHEMA} cursor-theme "$CURSOR"
    ${SCHEMA} font-name "$FONT"
}

apply_themes

exec picom --experimental-backends --vsync --animations