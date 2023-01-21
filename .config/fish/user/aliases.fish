#  /$$$$$$   /$$$$$$  /$$$$$$$$ /$$$$$$     
# /$$__  $$ /$$__  $$|__  $$__//$$__  $$  
#| $$  \__/| $$  \ $$   | $$  | $$  \ $$    
#|  $$$$$$ | $$$$$$$$   | $$  | $$$$$$$$    
# \____  $$| $$__  $$   | $$  | $$__  $$
# /$$  \ $$| $$  | $$   | $$  | $$  | $$
#|  $$$$$$/| $$  | $$   | $$  | $$  | $$
# \______/ |__/  |__/   |__/  |__/  |__/
#
# Fish configuration files

alias dhex="dhex -f $XDG_CONFIG_HOME/dhexrc"
alias ffprobe="ffprobe -show_format -pretty -loglevel debug"
alias gitdf="git --git-dir=$PROJECTS_DIR/dotfiles/ --work-tree=$HOME"
alias grep='grep -i --color=auto'
alias gpg='gpg2 --homedir "$XDG_DATA_HOME"/gnupg'
alias languagetool_server='languagetool --http --port 8081 --allow-origin "*"'
alias ls="ls -hF --color=auto --group-directories-first"
alias mkdir="mkdir -p"
alias mpd="mpd $XDG_CONFIG_HOME/mpd/mpd.conf"
alias music='tmux new-session "tmux source-file ~/.config/ncmpcpp/tmux_session"'
alias mvn='mvn -gs "$XDG_CONFIG_HOME"/maven/settings.xml'
alias nvidia-settings='nvidia-settings --config="~/.config/nvidia/settings"'
alias p="sudo pacman"
alias ps="ps -u $USER"
alias scc="scc --exclude-dir target,.idea,.git,.venv,.env"
alias sound="yt-dlp --ignore-config -x --audio-format mp3 -o '~/Documents/sounds/%(title)s.%(ext)s'"
alias song="vidl opus --no-embed --no-smart-md"
alias ss='sudo systemctl'
alias upmirrors='sudo reflector --verbose --latest 15 --sort rate --protocol https --save /etc/pacman.d/mirrorlist'
alias wget='wget --hsts-file="$XDG_CACHE_HOME/wget-hsts"'
alias yay='paru --noconfirm --sudoloop --noremovemake --nocleanafter --noredownload'
alias yarn='yarn --use-yarnrc "$XDG_CONFIG_HOME/yarn/config"'
alias youtube-dl='yt-dlp'
