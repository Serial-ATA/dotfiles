#   /$$$$$$   /$$$$$$  /$$$$$$$$ /$$$$$$     
#  /$$__  $$ /$$__  $$|__  $$__//$$__  $$  
# | $$  \__/| $$  \ $$   | $$  | $$  \ $$    
# |  $$$$$$ | $$$$$$$$   | $$  | $$$$$$$$    
#  \____  $$| $$__  $$   | $$  | $$__  $$
#  /$$  \ $$| $$  | $$   | $$  | $$  | $$
# |  $$$$$$/| $$  | $$   | $$  | $$  | $$
#  \______/ |__/  |__/   |__/  |__/  |__/    https://serial-ata.me
#
# Fish configuration files

# Set terminal type and editor
set -x TERM xterm-256color
set -x EDITOR nano

set -x XDG_CONFIG_HOME "$HOME/.config"
set -x XDG_DATA_HOME "$HOME/.local/share"
set -x XDG_CACHE_HOME "$HOME/.cache"

#############################
#         CONFIG            #
#############################

#ADB
set -x ANDROID_SDK_HOME "$XDG_CONFIG_HOME"/android
set -x ADB_VENDOR_KEY "$XDG_CONFIG_HOME"/android

#Docker
set -x DOCKER_CONFIG "$XDG_CONFIG_HOME"/docker

#GTK
set -x GTK2_RC_FILES "$XDG_CONFIG_HOME"/gtk-2.0/gtkrc

#Java
set -x _JAVA_OPTIONS -Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java

#KDE
set -x KDEHOME "$XDG_CONFIG_HOME"/kde

#MPlayer
set -x MPLAYER_HOME "$XDG_CONFIG_HOME"/mplayer

#NPM
set -x NPM_CONFIG_USERCONFIG "$XDG_CONFIG_HOME"/npm/npmrc

#Python
set -x PYTHONSTARTUP "$XDG_CONFIG_HOME"/python/pythonrc

#############################
#          CACHE            #
#############################
 
#Nvidia
set -x __GL_SHADER_DISK_CACHE_PATH "$XDG_CACHE_HOME"/nv
set -x CUDA_CACHE_PATH "$XDG_CACHE_HOME"/nv

# Pywal
cat ~/.cache/wal/sequences &

#Ruby
set -x GEM_SPEC_CACHE "$XDG_CACHE_HOME"/gem

#############################
#          DATA             #
#############################

#ADB
set -x ANDROID_AVD_HOME "$XDG_DATA_HOME"/android/
set -x ANDROID_EMULATOR_HOME "$XDG_DATA_HOME"/android/

#Cargo
set -x CARGO_HOME "$XDG_DATA_HOME"/cargo

#GnuPG
set -x GNUPGHOME "$XDG_DATA_HOME"/gnupg

#Go
set -x GOPATH "$XDG_DATA_HOME"/go

#Gradle
set -x GRADLE_USER_HOME "$XDG_DATA_HOME"/gradle

#Ncurses
set -x TERMINFO "$XDG_DATA_HOME"/terminfo

#Ruby
set -x GEM_HOME "$XDG_DATA_HOME"/gem

#Rustup
set -x RUSTUP_HOME "$XDG_DATA_HOME"/rustup

#Vagrant
set -x VAGRANT_HOME "$XDG_DATA_HOME"/vagrant
set -x VAGRANT_ALIAS_FILE "$XDG_DATA_HOME"/vagrant/aliases

#WINE
set -x WINEPREFIX "$XDG_DATA_HOME"/wineprefixes/default

#PATH
set -x PATH "$CARGO_HOME/bin:$XDG_DATA_HOME/npm/bin:$HOME/.local/bin:$PATH" 
