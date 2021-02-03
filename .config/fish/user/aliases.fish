#  /$$$$$$   /$$$$$$  /$$$$$$$$ /$$$$$$     
# /$$__  $$ /$$__  $$|__  $$__//$$__  $$  
#| $$  \__/| $$  \ $$   | $$  | $$  \ $$    
#|  $$$$$$ | $$$$$$$$   | $$  | $$$$$$$$    
# \____  $$| $$__  $$   | $$  | $$__  $$
# /$$  \ $$| $$  | $$   | $$  | $$  | $$
#|  $$$$$$/| $$  | $$   | $$  | $$  | $$
# \______/ |__/  |__/   |__/  |__/  |__/    https://serial-ata.me
#
# Fish configuration files

alias grep='grep -i --color=auto'
alias gpg='gpg2 --homedir "$XDG_DATA_HOME"/gnupg'
alias ls="ls -hF --color=auto --group-directories-first"
alias mkdir="mkdir -p"
alias mpd="mpd $XDG_CONFIG_HOME/mpd/mpd.conf"
alias music='tmux new-session "tmux source-file ~/.config/ncmpcpp/tmux_session"'
alias nvidia-settings='nvidia-settings --config="~/.config/nvidia/settings"'
alias p="sudo pacman"
alias ps="ps -u $USER"
alias systemctl='sudo systemctl'
alias yay='paru --noconfirm --sudoloop --noremovemake --nocleanafter --noredownload'
