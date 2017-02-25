#!/bin/sh

echo ------------- Install Homebrew -------------
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo ------------- Update Brew -------------
brew update

echo ------------- Installing Cask -------------
brew tap caskroom/cask

echo ------------- Install Brew Packages -------------
brew install ansible
brew install cask
brew install homebrew/completions/brew-cask-completion
brew install dnsmasq
brew install go
brew install node@6
brew install mas
brew install mongodb
brew install mysql
brew install homebrew/php/php70
brew install homebrew/php/php70-mcrypt
brew install homebrew/php/php70-xdebug
brew install redis
brew install wget


echo ------------- Install Cask Apps -------------
brew cask install alfred
brew cask install anki
brew cask install appcleaner
brew cask install atom
brew cask install bartender
brew cask install calibre
brew cask install cloudup
brew cask install diffmerge
brew cask install docker
brew cask install dropbox
brew cask install evernote
brew cask install firefox
brew cask install flycut
brew cask install gfxcardstatus
brew cask install gitkraken
brew cask install google-chrome
brew cask install iterm2
brew cask install medis
brew cask install postman
brew cask install robomongo
brew cask install sdformatter
brew cask install sequel-pro
brew cask install skype
brew cask install slack
brew cask install smartgit
brew cask install spotify
brew cask install spotify-notifications
brew cask install sublime-text
brew cask install vagrant
brew cask install virtualbox


echo  ------------- Install Apps from Appstore -------------
#Magnet
mas install 441258766
#ColorSnapper2
mas install 969418666
#1password
mas install 443987910
#Reeder
mas install 880001334
#Pages
mas install 409201541
#Spark
mas install 1176895641
#The Unarchiver
mas install 425424353
#Fantastical 2
mas install 975937182
#Tweetbot
mas install 557168941

echo ------------- Cleanup Brew -------------
brew cleanup

echo ------------- Cleanup Cask Installs -------------
brew cask cleanup

