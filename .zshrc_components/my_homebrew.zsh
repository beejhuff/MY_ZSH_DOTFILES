#!/bin/zsh

# Written by Kevin Martin.
# This script contains aliases and fucntions associated
# with the Mac Homebrew package manager.
# NOTE This also includes aliases/function associated with
# pip, R, MySQL, and other programs that I install through homebrew.

# # # # # Directory aliases # # # # #

# Alias to quickly access Mac homebrew directories
alias brewdir="cd /usr/local/Cellar"
alias brewmysqldir="cd /usr/local/Cellar/mysql"

# Alias to quickly access mysql directories
alias basedir="/usr/local/Cellar/mysql/5.7.11/"
alias datadir="/usr/local/Cellar/mysql/5.7.11/data/"

# # # # # Tree command aliases # # # # #

# View my frequent directories using the tree command
alias viewhome='tree -C -L 2 ~'
alias viewrepo='tree -C -L 2 ~/CODE_REPO'
alias viewcellar='tree -C -L 2 /usr/local/Cellar'
alias viewgit='tree -C -L 2 ~/Github'

# Use custom versions of the tree command for quickly examining directories
alias mytree='tree -C -F -L 2' # A brief view, only two levels deep

# This is a more in-depth view of a directory using the tree command.
# You can see hidden files, permissions, modification time,
alias vtree='tree -a -C -D -F -p -u -h -t'

# # # # # Pip Scripts # # # # #
alias pipupdate="pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U"
alias pip3update="pip3 freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -U"

# Run Homebrew Cask GUI applications from the terminal
alias mysqlworkbench="open ~/Applications/MySQLWorkbench.app"
alias rgui="open /Applications/R.app"

# These are some aliases for working with R, this will save time typing options
alias Rvanilla="/usr/local/bin/R --vanilla"
alias Rrestore="/usr/local/bin/R --restore"
alias Rnorestore="/usr/local/bin/R --no-restore"

# # # # # Irssi configuration options # # # # #
alias chatirssi="irssi --config=~/.irssi/chat_config"
alias devirssi="irssi --config=~/.irssi/dev_config"
alias linuxirssi="irssi --config=~/.irssi/linux_config"
alias newsirssi="irssi --config=~/.irssi/news_config"
alias sqlirssi="irssi --config=~/.irssi/sql_config"

# Open google in lynx
alias glynx='lynx google.com'
