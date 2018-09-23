#!/bin/bash -e

sudo apt-get update
sudo apt-get install python3 python3-pip

sudo pip3 install python-telegram-bot --upgrade
sudo pip3 install discord.py --upgrade

sudo mkdir -p /opt/LunesTipBot

sudo cp -prf ~/LunesTipBot/LunesDiscordTipBot /etc/init.d/LunesDiscordTipBot
sudo cp -prf ~/LunesTipBot/LunesDiscordTipBot.py /opt/LunesTipBot/LunesDiscordTipBot.py
sudo cp -prf ~/LunesTipBot/LunesTelegramTipBot /etc/init.d/LunesTelegramTipBot
sudo cp -prf ~/LunesTipBot/LunesTelegramTipBot.py /opt/LunesTipBot/LunesTelegramTipBot.py
sudo cp -prf ~/LunesTipBot/pickledb.py /opt/LunesTipBot/pickledb.py

rm -rf ~/LunesTipBot

echo "DONE!!"
