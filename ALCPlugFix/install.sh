#!/bin/bash

path=${0%/*}
sudo mount -uw / && killall Finder
sudo cp -a "$path/ALCPlugFix" /usr/bin
sudo chmod 755 /usr/bin/ALCPlugFix
sudo chown root:wheel /usr/bin/ALCPlugFix
sudo cp -a "$path/hda-verb" /usr/bin
sudo chmod 755 /usr/bin/hda-verb
sudo chown root:wheel /usr/bin/hda-verb
sudo cp -a "$path/good.win.ALCPlugFix.plist" /Library/LaunchAgents/
sudo chmod 644 /Library/LaunchAgents/good.win.ALCPlugFix.plist
sudo chown root:wheel /Library/LaunchAgents/good.win.ALCPlugFix.plist
sudo launchctl load /Library/LaunchAgents/good.win.ALCPlugFix.plist
