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

set -x XDG_PICTURES_DIR "$HOME/Media/Pictures"
set -x XDG_VIDEOS_DIR "$HOME/Media/Videos"

set -x PROJECTS_DIR "$HOME/Projects"

set -x GPG_TTY (tty)
set -x LD_BIND_NOW 1
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
set -x JAVA_HOME "/usr/lib/jvm/default"

#KDE
set -x KDEHOME "$XDG_CONFIG_HOME"/kde

#Less
set -x LESSKEY "$XDG_CONFIG_HOME"/less/lesskey

#MPlayer
set -x MPLAYER_HOME "$XDG_CONFIG_HOME"/mplayer

#NPM
set -x NPM_CONFIG_USERCONFIG "$XDG_CONFIG_HOME"/npm/npmrc

#Python
set -x PYTHONSTARTUP "$XDG_CONFIG_HOME"/python/pythonrc

#Ruby Bundler
set -x BUNDLE_USER_CONFIG "$XDG_CONFIG_HOME"/bundle

#############################
#          CACHE            #
#############################

#Less
set -x LESSHISTFILE "$XDG_CACHE_HOME"/less/history

#Nvidia
set -x __GL_SHADER_DISK_CACHE_PATH "$XDG_CACHE_HOME"/nv
set -x CUDA_CACHE_PATH "$XDG_CACHE_HOME"/nv

# Pywal
cat ~/.cache/wal/sequences &

#Ruby
set -x GEM_SPEC_CACHE "$XDG_CACHE_HOME"/gem
set -x BUNDLE_USER_CACHE "$XDG_CACHE_HOME"/bundle

#############################
#          DATA             #
#############################

#ADB
set -x ANDROID_AVD_HOME "$XDG_DATA_HOME"/android/
set -x ANDROID_EMULATOR_HOME "$XDG_DATA_HOME"/android/

#Cargo
set -x CARGO_HOME "$XDG_DATA_HOME"/cargo
set -x CARGO_TARGET_DIR "$PROJECTS_DIR"/target

#GnuPG
set -x GNUPGHOME "$XDG_DATA_HOME"/gnupg

#Go
set -x GOPATH "$XDG_DATA_HOME"/go

#Gradle
set -x GRADLE_USER_HOME "$XDG_DATA_HOME"/gradle

#MySQL (MariaDB)
set -x MYSQL_HISTFILE "$XDG_DATA_HOME"/mysql_history

#Ncurses
set -x TERMINFO "$XDG_DATA_HOME"/terminfo

#Ruby
set -x GEM_HOME (ruby -e 'puts Gem.user_dir')
set -x BUNDLE_USER_PLUGIN "$XDG_DATA_HOME"/bundle

#Rustup
set -x RUSTUP_HOME "$XDG_DATA_HOME"/rustup

#Vagrant
set -x VAGRANT_HOME "$XDG_DATA_HOME"/vagrant
set -x VAGRANT_ALIAS_FILE "$XDG_DATA_HOME"/vagrant/aliases

#WINE
set -x WINEPREFIX "$XDG_DATA_HOME"/wineprefixes/default

#PATH
set -x PATH "$JAVA_HOME/bin:$GEM_HOME/bin:$CARGO_HOME/bin:$XDG_DATA_HOME/npm/bin:$HOME/.local/bin:$PATH" 
