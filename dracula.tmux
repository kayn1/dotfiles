set -g @plugin 'dracula/tmux'
# available plugins: battery, cpu-usage, git, gpu-usage, ram-usage, network, network-bandwidth, network-ping, weather, time
set -g @dracula-plugins "battery cpu-usage ram-usage git time weather"

# available colors: white, gray, dark_gray, light_purple, dark_purple, cyan, green, orange, red, pink, yellow
# set -g @dracula-[plugin-name]-colors "[background] [foreground]"
set -g @dracula-cpu-usage-colors "pink dark_gray"
set -g @dracula-show-powerline true

set -g @dracula-show-left-sep 

# for right symbol (can set any symbol you like as seperator)
set -g @dracula-show-right-sep 
set -g @dracula-show-flags true
set -g @dracula-refresh-rate 5
set -g @dracula-show-left-icon session
set -g @dracula-left-icon-padding 1
set -g @dracula-battery-label "Battery"
set -g @dracula-ping-server "google.com"
set -g @dracula-ping-rate 5
set -g @dracula-show-timezone true
set -g @dracula-fixed-location "Zakopane"
set -g @dracula-battery-colors "light_purple dark_gray"
set -g @dracula-show-fahrenheit false

run -b '~/.tmux/plugins/tpm/tpm'
