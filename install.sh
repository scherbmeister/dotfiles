#!/bin/bash

# Disable hack for "git clone" over https error.
export GIT_SSL_NO_VERIFY=0

sudo add-apt-repository ppa:ondrej/php
sudo apt update
sudo apt -y upgrade

#Install OpenSSH
sudo apt install openssh-server
sudo apt install net-tools

# Set basic git configuration
git config --global user.name "Scherbmeister"
git config --global user.email "scherbmeister@gmail.com"

# Generate ssh key for github use etc.
ssh-keygen -t ed25519 -C "scherbmeister@gmail.com"

# Install PHP 
sudo apt install php8.2 php8.2-cli php8.2-{curl,bz2,mbstring,intl,xdebug}
