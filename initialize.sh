#!/usr/bin/env bash

# bail if anything happens
set -e

# Add github to known hosts
sudo -s 'ssh-keyscan -H github.com > /etc/ssh/ssh_known_hosts'

# Generate ssh key, copy to clipboard, open github keys for adding new key
ssh-keygen -t rsa -f ~/.ssh/id_rsa
pbcopy < ~/.ssh/id_rsa.pub
open 'https://github.com/settings/keys'

# install xcode-select
xcode-select --install
