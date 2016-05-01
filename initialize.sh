#!/usr/bin/env bash
sudo -v
sudo -s 'ssh-keyscan -H github.com > /etc/ssh/ssh_known_hosts'
ssh-keygen -t rsa
pbcopy < ~/.ssh/idrsa.pub
open 'https://github.com/settings/keys'
xcode-select --install
