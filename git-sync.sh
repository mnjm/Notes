#!/usr/bin/env bash

. $DOTFILES/install/setup_utils.sh

if [ ! -d "./.obsidian" ]; then
    _alert_local "Not a obsidian vault"
    exit 3
fi

changeExists="$(git status --porcelain | wc -l)"

if [ $changeExists -gt 0 ]; then
    git add .
    git commit -m "vault backup: $(date +"%Y-%m-%d %H:%M:%S") $hostname"
    git pull --rebase
    git push origin main
fi 
