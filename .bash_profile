#
# ~/.bash_profile
#
# startup file executed by bash(1) for login shells.

# Load .bashrc on login with no GUI:
#[[ -f ~/.bashrc ]] && . ~/.bashrc

# Start Sway on login with no logging:
#[[ -f ~/.bashrc ]] && . ~/.bashrc && exec sway

# Start Sway on login with error logging:
[[ -f ~/.bashrc ]] && . ~/.bashrc && mkdir -p /tmp/log && exec sway 2> /tmp/log/sway.log

# Start Sway on login with full logging:
#[[ -f ~/.bashrc ]] && . ~/.bashrc && mkdir -p /tmp/log && exec sway > /tmp/log/sway.log 2>&1
