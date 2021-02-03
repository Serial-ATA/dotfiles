stty -ixon

zstyle :compinstall filename '/home/alex/.zshrc'

autoload -Uz colors && colors

# Opts
setopt auto_cd                 
setopt auto_remove_slash       
setopt chase_links              
setopt correct                 
setopt extended_glob            
setopt glob_dots                
setopt print_exit_value  
setopt hash_list_all            
setopt completealiases          
setopt always_to_end                
setopt complete_in_word         
setopt correct                  
setopt list_ambiguous   
setopt PROMPT_SUBST

unsetopt beep                   
unsetopt bg_nice                
unsetopt clobber                
unsetopt hist_beep              
unsetopt hup                               
unsetopt list_beep              
unsetopt rm_star_silent         
setxkbmap -option compose:ralt  
print -Pn "\e]0; %n@%M: %~\a"   

zmodload -i zsh/complist        
        

zstyle ':completion::complete:*' use-cache on               
zstyle ':completion:*' cache-path ~/.config/zsh/cache              
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'   
zstyle ':completion:*' menu select=2                        
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}       
zstyle ':completion:*::::' completer _expand _complete _ignored _approximate 

# history
HISTFILE=~/.config/zsh/.HIST
setopt APPEND_HISTORY
HISTSIZE=1200
SAVEHIST=1000
setopt HIST_EXPIRE_DUPS_FIRST
setopt EXTENDED_HISTORY
setopt SHARE_HISTORY

# keybindings
typeset -A key

key[Up]=${terminfo[kcuu1]}
key[Down]=${terminfo[kcud1]}
key[Left]=${terminfo[kcub1]}
key[Right]=${terminfo[kcuf1]}

[[ -n "${key[Up]}"       ]]  && bindkey  "${key[Up]}"       up-line-or-history
[[ -n "${key[Down]}"     ]]  && bindkey  "${key[Down]}"     down-line-or-history
[[ -n "${key[Left]}"     ]]  && bindkey  "${key[Left]}"     backward-char
[[ -n "${key[Right]}"    ]]  && bindkey  "${key[Right]}"    forward-char

if (( ${+terminfo[smkx]} )) && (( ${+terminfo[rmkx]} )); then
	function zle-line-init () {
		printf '%s' "${terminfo[smkx]}"
	}
	function zle-line-finish () {
		printf '%s' "${terminfo[rmkx]}"
	}
	zle -N zle-line-init
	zle -N zle-line-finish
fi 

# syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# colored man pages
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;38;5;74m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[38;33;246m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[04;38;5;146m'

# autocompletion
fpath=($HOME/.config/zsh/completion $fpath)
autoload -Uz compinit
compinit -u

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2 eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
