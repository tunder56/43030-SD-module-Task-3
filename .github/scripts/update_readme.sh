#!/bin/bash

#inputs
FREQ_RESULT=$1
GITHIB_USER=$2
TIMESTAMP=$(date)

#update README
echo -e "\n[$GITHUB_USER - $FREQ_RESULT - $TIMESTAMP]" >> README.md

# config fit to use guthub actions user and email
git config --global user.name "github-actions"
git config --global user.email "github-actions@users.noreply.github.com"

# add readme and comit + push
git add README.md
git commit -m "Update README with vowel freq results"
git push