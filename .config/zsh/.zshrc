source ~/.config/zsh/zprofile
for config (~/.config/zsh/*.zsh) source $config
compinit -d $XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION
