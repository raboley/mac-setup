# mac-setup
A repo to install all the tools I use on a mac regularly

1. Install Brew 

``` bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```


## Mac settings

1. Invert the scroll direction.

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


# Docker desktop adds these
1. kubectl
1. minikube

## mac programs

1. vscode
1. docker for mac
1. slack
1. goland
1. pycharm
1. chrome
1. firefox

