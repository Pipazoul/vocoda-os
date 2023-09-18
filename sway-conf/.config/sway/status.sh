# The Sway configuration file in ~/.config/sway/config calls this script.
# You should see changes to the status bar after saving this script.
# If not, do "killall swaybar" and $mod+Shift+c to reload the configuration.

# Produces "21 days", for example
uptime_formatted=$(uptime | cut -d ',' -f1  | cut -d ' ' -f4,5)

# The abbreviated weekday (e.g., "Sat"), followed by the ISO-formatted date
# like 2018-10-06 and the time (e.g., 14:01)
date_formatted=$(date "+%a %F %H:%M")

# Get the Linux version but remove the "-1-ARCH" part
linux_version=$(uname -r | cut -d '-' -f1)

# Returns the battery status: "Full", "Discharging", or "Charging".
#battery_status=$(cat /sys/class/power_supply/BAT0/status)
battery_status=$(acpi)

# using pactl to get the volume
volume=$(pactl list sinks | grep '^[[:space:]]Volume:' | \
    head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')    

muted=$(pactl list sinks | grep '^[[:space:]]Mute:' | \
    head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([a-z][a-z]*\)$,\1,')
if [ $muted = "yes" ]; then
    volume="Muted"
else
    volume="$volume%"
fi

wifi=$(iwgetid -r)

# Emojis and characters for the status bar
# 💎 💻 💡 🔌 ⚡ 📁 \|
echo 🔊 $volume "|" 🕐 $uptime_formatted "|" 📶 $wifi  "|" 🔋 $battery_status "|" 📅 $date_formatted
