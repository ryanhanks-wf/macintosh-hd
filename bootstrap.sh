#!/usr/bin/env bash

GITHUB_USER=ryanhanks
REPO=macintosh-hd

# Initialize sudo
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install ansible
sudo easy_install
sudo pip install ansible

# Make sure we have proper access to /usr/local
sudo chmod -R g+rwx /usr/local
sudo chgrp -R admin /usr/local

# Create a space for storing our source code
mkdir -p src/github.com/$GITHUB_USER
pushd src/github.com/$GITHUB_USER

# Clone the config repo
git clone git@github.com:$GITHUB_USER/$REPO

# Run ansible against the config
pushd $REPO
ansible-galaxy install -r requirements.yml
ansible-playbook -i "localhost," main.yml
