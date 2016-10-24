#!/usr/bin/env bash

# bail if anything happens
set -e

# Add github to known hosts
echo "#!/bin/bash\nssh-keyscan -H github.com > /etc/ssh/ssh_known_hosts" > update_known_hosts.sh
chmod 755 update_known_hosts.sh
sudo update_known_hosts.sh
rm update_known_hosts.sh

# Generate ssh key, copy to clipboard, open github keys for adding new key
ssh-keygen -t rsa -f ~/.ssh/id_rsa
pbcopy < ~/.ssh/id_rsa.pub
open 'https://github.com/settings/keys'

# install xcode-select
xcode-select --install
