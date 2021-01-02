# install xcode
xcode-select --install
sudo xcode-select --switch /Library/Developer/CommandLineTools

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# adding brew location to path in and profile script
export PATH="/opt/homebrew/bin:$PATH"
echo 'export PATH="/opt/homebrew/bin:$PATH"' >> ~/.zshrc

# Mac Preferences

## update scroll direction
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

## add volume to the menu bar
defaults write com.apple.systemuiserver menuExtras -array \
"/System/Library/CoreServices/Menu Extras/Clock.menu" \
"/System/Library/CoreServices/Menu Extras/Volume.menu"

killall SystemUIServer

## Disable annoying terminal sounds (restart terminal after doing this)
echo 'set bell-style off' > ~/.inputrc
. ~/.inputrc

# Show hidden files in finder
defaults write com.apple.finder AppleShowAllFiles -bool YES && killall Finder

#### Cloud cli tools
brew install azure-cli

#### Cli Tools

# git installed with brew
# brew installed above

brew install terraform
brew install kubectl
brew install minikube
brew install helm

# language/frameworks

brew install 

# golang
export GOPATH="${HOME}/.go"
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
test -d "${GOPATH}" || mkdir "${GOPATH}"
test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"
echo 'export GOPATH="${HOME}/.go"
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
test -d "${GOPATH}" || mkdir "${GOPATH}"
test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"
' >> ~/.profile

brew install go
go get golang.org/x/tools/cmd/godoc
go get github.com/golang/lint/golint

# python
brew install python
pip install --user pipenv
# since this is a user install add the pipenv to path
export PATH="$(python -m site --user-base)/bin:$PATH"
echo 'export PATH="$(python -m site --user-base)/bin:$PATH' >> ~/.profile

# sometimes I like virtualenv more or need it
pip install virtualenv

brew install node

#### Mac Programs

brew cask install visual-studio-code
brew cask install docker
brew cask install slack
brew cask instlal spotify

## Jetbrains installs
# For these it is important to use the correct jetbrains account to sync settings
# once it starts up the first time and editor opens hit the little cloud in the bottom right
# then choose sync plugins. It will ask to restart the ide, do it.
# then to get the themes and stuff to work correctly you need to completely close out of the ide and choose
# material theme settings then everything should be setup correctly for that jetbrains account

brew cask install goland
brew cask install pycharm
brew cask intsall rider
# maybe won't need soon
brew cask install powershell

## vim configuration
# install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp .vimrc ~/.vimrc
