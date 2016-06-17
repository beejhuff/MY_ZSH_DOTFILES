#!/bin/zsh

# Written by Kevin Martin.
# This set of aliases and functions is used for networking settings, etc.

# Call iftop with as superuser by default (Personal machine only!)
alias iftop="sudo /usr/local/sbin/iftop"

# List open connections using the lsof command
alias connections="sudo lsof -n -i -P -c 15"

# Stop after sending count ECHO_REQUEST packets #
alias ping="ping -c 5"

# Use an alias for the Apple airport utility
alias airport='/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport'

# Power cycle wifi in case of connectivity problems
alias airportcycle='networksetup -setairportpower en0 off; sleep 1; networksetup -setairportpower en0 on'

# Turn airport on and off from the command line
alias wifion='networksetup -setairportpower en0 on'
alias wifioff='networksetup -setairportpower en0 off'

# # # # # My Network Info Function # # # # #
# This is a script to print detailed information about each hardware port on
# my Mac computer. This uses the networksetup utility to display information.
my_networking_info() {
    echo Printing all network services...
    echo ------------------------------------------------------------
    networksetup -listallnetworkservices
    echo ------------------------------------------------------------
    ports=('Thunderbolt FireWire' 'Wi-Fi' 'Bluetooth PAN' 'Thunderbolt Bridge')
    echo
    echo Printing information about network services...
    echo
    for port in $ports; do
        echo Information about $port:;
        echo ------------------------------------------------------------
        networksetup -getinfo $port
        echo ------------------------------------------------------------
        echo
    done
    echo Printing information about current wireless status...
    echo ------------------------------------------------------------
    /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport --getinfo
    echo ------------------------------------------------------------
}
