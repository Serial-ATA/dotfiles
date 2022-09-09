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

# Memory Information
set mem_total (free -m | grep -E Mem: | tr -s ' ' | cut -d ' ' -f 2)
set mem_used (free -m | grep -E Mem: | tr -s ' ' | cut -d ' ' -f 3)
set mem_percent (math "$mem_used * 100 / $mem_total" | sed 's/[.].*//')
set mem_usage "$mem_used""MB/""$mem_total""MB"

# CPU Information
set cpu_temp (cat /sys/class/hwmon/hwmon0/temp1_input | sed -r 's/.{3}$//')
set cpu_temp_print "  🌡️  $cpu_temp°C  "
set cpu_cores (math (grep -c "^processor" /proc/cpuinfo) - 1)
set cpu_usage (math (ps aux | awk 'BEGIN {sum=0} {sum+=$3}; END {print sum}') / $cpu_cores | cut -d . -f 1)

# GPU Information
set gpu_temp (nvidia-smi --query-gpu=temperature.gpu --format=csv 2>&1 | awk '{if(NR==2) print $0}' | sed 's/\s.*$//')
set gpu_usage (nvidia-smi --query-gpu=utilization.memory --format=csv 2>&1 | awk '{if(NR==2) print $0}' | sed 's/\s.*$//')
set gpu_temp_print "  🌡️  $gpu_temp°C  "



if test "$cpu_usage" -gt 9
set cpu_use "  📡 $cpu_usage %  "
else
set cpu_use "  📡  $cpu_usage %  "
end

if test "$mem_percent" -gt 9
set mem_p "       ($mem_percent%)        "
else
set mem_p "        ($mem_percent%)        "
end

if test "$mem_used" -gt 9999
set mem "  $mem_usage   "
else if test $mem_used -gt 999
set mem "   $mem_usage   "
else
set mem "    $mem_usage   "
end

if test "$gpu_usage" -gt 9
set gpu_use "  📡 $gpu_usage %  "
else
set gpu_use "  📡  $gpu_usage %  "
end

set STATS "
                              /\            ╭───────────╮  ╭────────────────────╮  ╭───────────╮           /\ 
                             /  \           │ ┌─┐┌─┐┬ ┬ │  │ ┌┬┐┌─┐┌┬┐┌─┐┬─┐┬ ┬ │  │ ┌─┐┌─┐┬ ┬ │          /  \\
                            /    \          │ │  ├─┘│ │ │  │ │││├┤ ││││ │├┬┘└┬┘ │  │ │ ┬├─┘│ │ │         /    \\
                           /      \         │ └─┘┴  └─┘ │  │ ┴ ┴└─┘┴ ┴└─┘┴└─ ┴  │  │ └─┘┴  └─┘ │        /      \\
                          /   ,,   \        │$cpu_temp_print│  │$mem│  │$gpu_temp_print│       /   ,,   \\
                         /   |  |  -\       │$cpu_use│  │$mem_p│  │$gpu_use│      /   |  |  -\\
                        /_-''    ''-_\\      ╰───────────╯  ╰────────────────────╯  ╰───────────╯     /_-''    ''-_\\"       

set center (math (count $STATS)+(tput cols) / 2)

if string match '*.*' $center
set decimal (echo "$center" | sed 's/..//' | math 10 - $1)
clear
set center (math $center + $decimal)
end

printf "%*s\n" $center "$STATS" | lolcat; echo -e "\n\n"
