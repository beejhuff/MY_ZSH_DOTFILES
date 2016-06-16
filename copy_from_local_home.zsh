#!/bin/zsh
# Written by Kevin Martin.
# This script will copy the current local versions of my dotfiles
# into the current directory, prompting in case of potential overwrite.
# (NOTE: Assumed to be the Github repository, but this can be used elsewhere.)

/bin/cp -iv ~/.zshrc ${PWD}
/bin/cp -ivR ~/.zshrc_components ${PWD}
