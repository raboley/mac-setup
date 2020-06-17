# mac-setup
A repo to install all the tools I use on a mac regularly.

The way I do this is to pick things from the setup.sh script and run the commands manually. I don't have a consistent enough set of needs to do a one go install of it, but if you just wanted everything you could run the setup.sh script.

To run parts I just copy the set of commands and paste them into terminal to get them to install. They all require brew so make sure to always run brew install first if you are doing piece meal installs.

1. Install Brew 

``` bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```


## Mac settings

1. Invert the scroll direction, I like the opposite scroll direction to default.

``` bash
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false
```

1. Add my phone apple account to icloud
1. Enable keychain
1. Create ssh key `ssh-keygen -t rsa -b 4096 -C "russell.boley@slalom.com"`
1. add git username and email

```bash
git config --global user.email "russell.boley@slalom.com"
git config --global user.name "Russell Boley"
```

## Tools

1. git
1. brew
1. terraform
1. helm
1. go
1. python
1. pipenv
1. npm
1. powershell (if I must)
1. azure cli

# Docker desktop adds these
1. kubectl
1. minikube

## mac programs

### Developer applications

1. vscode
1. docker for mac
1. goland
1. pycharm

### productivity

1. slack
1. chrome
1. firefox
