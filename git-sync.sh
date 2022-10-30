#!/usr/bin/env bash

. $DOTFILES/install/setup_utils.sh

if [ ! -d "./.obsidian" ]; then
    _alert_local "Not a obsidian vault"
    exit 3
fi

changes="$(git status --porcelain)"
changeExists="$(echo $changes | wc -l)"

if [ $changeExists -gt 0 ]; then
    commitMsg="vault backup: $(date +"%Y-%m-%d %H:%M:%S") $(hostname)"
    echo $commitMsg
    git add .
    git commit -m "$commitMsg" -m "$changes"
    git pull --rebase
    git push origin main
else
    git pull
fi 
