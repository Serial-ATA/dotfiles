#Colors
COLOR_ROOT="%F{red}"
COLOR_USER="%F{cyan}"
COLOR_NORMAL="%F{white}"

#Time (RPROMPT)
TIME="$(date +"%T")"

#Emojis (RPROMPT)
EMOJIS=("🙂" "🤑" "🤗" "🤔" "🤐" "🙄" "😬" "🤥" "🤠" "🤓" "🙁" "😤" "💀" "🤡" "👻" "💤" "👌" "👍" "👎" "⏳" "⌚" "⏰" "🕛" "🕧" "🕐" "🕜" "🕑" "🕝" "🕒" "🕞" "🕓" "🕟" "🕔" "🕠" "🕕" "🕡" "🕖" "🕢" "🕗" "🕣" "🕘" "🕤" "🕙" "🕥" "🕚" "🕦" "🌟" "🌠" "🌀" "✨" "🎈" "🎉" "🎊" "💡" "🔧")
EMOJI=${#EMOJIS[@]}

# Permission Based Prompt Colors
if [[ "$EUID" -ne "0" ]]
then  # if user is not root
	USER_LEVEL="${COLOR_USER}"
else # root!
	USER_LEVEL="${COLOR_ROOT}"
fi

# Set Prompt
PROMPT='${USER_LEVEL}╭[${COLOR_NORMAL}${USER}@${HOST}${USER_LEVEL}]
${USER_LEVEL}╰[${COLOR_NORMAL}%~${USER_LEVEL}] ➜ %f'
RPROMPT='${USER_LEVEL}[${EMOJIS[$RANDOM % $EMOJI]}${USER_LEVEL}]⎯[${COLOR_NORMAL}${TIME}${USER_LEVEL}]' 
