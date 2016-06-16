#!/bin/zsh

# Written by Kevin Martin.
# This set of aliases and functions is used for networking settings, etc.

# Don't send continuous pings.
alias ping="ping -c 5"

# Use an alias for the Apple airport utility
alias airport='/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport'

# Power cycle wifi in case of connectivity problems
alias airportcycle='networksetup -setairportpower en0 off; sleep 1; networksetup -setairportpower en0 on'

# Turn airport on and off from the command line
alias wifion='networksetup -setairportpower en0 on'
alias wifioff='networksetup -setairportpower en0 off'

# Call iftop with as superuser by default (Personal machine only!)
alias iftop="sudo /usr/local/sbin/iftop"

# List open connections using the lsof command
alias connections="sudo lsof -n -i -P -c 15"
