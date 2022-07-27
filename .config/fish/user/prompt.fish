 #Colors
set COLOR_ROOT (set_color red)
set COLOR_USER (set_color cyan)
set COLOR_NORMAL (set_color white)

#Emoji (Right prompt)
set emojis 🙂 🤑 🤗 🤔 🤐 🙄 😬 🤥 🤠 🤓 🙁 😤 💀 🤡 👻 💤 👌 👍 👎 ⏳ ⌚ ⏰ 🕛 🕧 🕐 🕜 🕑 🕝 🕒 🕞 🕓 🕟 🕔 🕠 🕕 🕡 🕖 🕢 🕗 🕣 🕘 🕤 🕙 🕥 🕚 🕦 🌟 🌠 🌀 ✨ 🎈 🎉 🎊 💡 🔧

function get_emoji
    set emoji_count (echo $emojis | awk -F" " '{print NF-1}')
    set index (random 1  1 $emoji_count)
    set emoji $emojis[$index]
    echo $emoji
end

# Set left prompt
function fish_prompt
    # Username, hostname, and pwd are added to the left prompt
    printf "$USER_LEVEL╭[$COLOR_NORMAL$USER@$hostname$USER_LEVEL]\n$USER_LEVEL╰[$COLOR_NORMAL%s$USER_LEVEL] ➜ " (prompt_pwd)
end

# Set right prompt
function fish_right_prompt
    # Emoji and time are added to the right prompt
    printf "$USER_LEVEL [%s$USER_LEVEL]⎯[$COLOR_NORMAL%s$USER_LEVEL]" (get_emoji) (date +"%I:%M") # Time in 12 hour format, H:M
end
