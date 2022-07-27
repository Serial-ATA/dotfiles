# Defined in /tmp/fish.N1nYsb/fish_user_key_bindings.fish @ line 10
function bind_dollar
  switch (commandline -t)
  case "!"
    commandline -t ""
    commandline -f history-token-search-backward
  case "*"
    commandline -i '$'
  end
end
