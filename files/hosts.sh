#! /bin/bash
cd ~/
ping -q -w 1 -c 1 google.com > /dev/null && echo "internet ok" || exit
# curl https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling-porn-social/hosts > ~/hosts
curl https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling-porn/hosts > ~/hosts
sudo rm -rf /etc/hosts
sudo mv ~/hosts /etc/hosts
sudo ln -sf /run/systemd/resolve/stub-resolv.conf /etc/resolv.conf

