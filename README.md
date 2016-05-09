# macintosh-hd
This is the setup repo for my Macs

## Initialize

This:

1. Adds github to known ssh hosts
2. Creates a ssh key and copies it to the clipboard
3. Opens the github page for adding an ssh key (paste here and save key)
4. Starts the xcode-select installation

```sh
curl -s https://raw.githubusercontent.com/ryanhanks-wf/macintosh-hd/master/initialize.sh | bash
```

## Bootstrap

```sh
curl -s https://raw.githubusercontent.com/ryanhanks-wf/macintosh-hd/master/bootstrap.sh | bash
```
## Post-bootstrap

1. Run `./post-bootstrap.sh`
2. Authenticate HipChat
3. Open VMware and add key
4. Startup hyperswitch and configure to start on startup 
5. Open pycharm and configure for setting repository 
  * `git@github.com:ryanhanks-wf/pycharm-settings`
6. Open google app engine launcher and make symlinks



# Todo
- [x] Configure VM with independent disk
- [ ] Figure out window size management solution
- [x] Use zsh
- [ ] Add dart
