#!/bin/bash

username=$1
passwd=$2

if [[ $username != `users` ]]
then
  echo "Invalid username provided"
  exit 1
fi

sudo /usr/bin/defaults write /Library/Preferences/com.apple.loginwindow.plist "autoLoginUser" $username

./keygen.py $passwd