#!/bin/bash

is_ubuntu || return 1

sudo apt update

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

# Basics
install chromium-browser
install curl
install exfat-utils
install file
install git
install htop
install nmap
install openvpn
install tmux
install vim
install numpy
install pandas
install matplotlib
install libpcre3 
install libpcre3-dev
install zlib1g 
install zlib1g-dev 
install libssl-dev
