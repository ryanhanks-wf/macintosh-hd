#!/usr/bin/env bash
sudo -v
sudo -s 'ssh-keyscan -H github.com > /etc/ssh/ssh_known_hosts'
ssh-keygen -t rsa -f ~/.ssh/id_rsa.pub
pbcopy < ~/.ssh/id_rsa.pub
open 'https://github.com/settings/keys'
xcode-select --install
