# Dependencies for different dotfiles are listed here

## awesome/rc.lua
When awesome is loaded it autostarts pulseaudio. There are also a functionality
to lock the screen with xscreensaver (super ctrl l) and Chromeium (super b).
To use the batery indicator, vicous widget handler is required. It is available
at github.com/Mic92/vicious. It is also configured to autosart dropbox.

### Dropbox

### PulseAudio
Pulseaudio is the audioserver that i use 

### Chromium
A linux version of google chrome

### xscreensaver
A tool for handling screensaver and lockscreen

## vim
I use the Patogen plugin manager, `https://github.com/tpope/vim-pathogen`. This
allows for easy plugin instalation.

## zsh
    The custom prompt uses zsh-git-prompt
[https://github.com/olivierverdier/zsh-git-prompt] to show git information in
the prompt.

## xserver / xorg

## URxvt
    URxvt is configured in .Xresources

## XDM
XDM is used as a login manager, and isn't configured in the home folder.
Therefore was a new folder created for it and instructions were added where to
put it. 
