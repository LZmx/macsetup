#!/bin/sh

echo ------------- Install Homebrew -------------
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo ------------- Install extra casks -------------
brew tap homebrew/cask-drivers

echo ------------- Install RVM -------------
\curl -sSL https://get.rvm.io | bash -s stable

echo ------------- Update Brew -------------
brew update

echo ------------- Install Brew Packages -------------
brew install cocoapods
brew install diff-so-fancy
brew install git
brew install mas
brew install openjdk@8
brew install openjdk@11
brew install python@3.9
brew install watchman
brew install yarn
brew tap wix/brew
brew install applesimutils
brew install minikube
brew install hyperkit
brew install kubectl
brew install jq
brew install qmk/qmk/qmk
brew install via
brew install imagemagick
brew install graphicsmagick
brew install librsvg
brew install alfred --cask
brew install android-file-transfer --cask
brew install android-studio --cask
brew install appcleaner --cask
brew install caffeine --cask
brew install diffmerge --cask
brew install docker --cask
brew install dropbox --cask
brew install firefox --cask
brew install flipper --cask
brew install flycut --cask
brew install gfxcardstatus --cask
brew install google-drive --cask
brew install google-chrome --cask
brew install logitech-options --cask
brew install brave-browser --cask
brew install karabiner-elements --cask
brew install iterm2 --cask
brew install postman --cask
brew install skype --cask
brew install slack --cask
brew install smartgit --cask
brew install sourcetree --cask
brew install spotify --cask
brew install sublime-text --cask
brew install virtualbox --cask
brew install visual-studio-code --cask
brew install vlc --cask
brew install zoomus --cask

brew link java11

echo ------------- Configure Oh My ZSH -------------

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm
git clone https://github.com/lukechilds/zsh-better-npm-completion ~/.oh-my-zsh/custom/plugins/zsh-better-npm-completion

git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1

ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

echo  ------------- Install NVM -------------

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.0/install.sh | zsh

echo  ------------- Configure NVM -------------

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

echo  ------------- Install Node versions -------------

nvm install 8.17.0
nvm install 10.23.0
nvm install 11.15.0
nvm install 12.19.0
nvm install 14.17.3
nvm install 15.2.0
nvm install 16.16.0

echo  ------------- Set default Node version -------------

nvm alias default 16.16.0

echo ------------- Install RVM -------------

\curl -sSL https://get.rvm.io | bash -s stable

echo  ------------- Install Apps from Appstore -------------
#Xcode
mas install 497799835
#FB Messenger
mas install 1480068668
#Whatsapp
mas install 1147396723
#Tot
mas install 1491071483
#Trello
mas install 1278508951
#Boom 3D
mas install 1233048948
#Magnet
mas install 441258766
#Jira
mas install 1475897096
#1Password
mas install 1333542190
#The Unarchiver
mas install 425424353
#Wechat
mas install 836500024
#Fantastical
mas install 975937182
#Microsoft Remote Desktop
mas install 1295203466
#Spark
mas install 1176895641
#telegram
mas install 946399090
#ColorSnapper2
mas install 969418666

echo ------------- Configure Android Paths -------------

echo 'export ANDROID_HOME=$HOME/Library/Android/sdk' >> ~/.zshrc
echo 'export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk' >> ~/.zshrc
echo 'export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin' >> ~/.zshrc
echo 'export PATH=$PATH:$ANDROID_HOME/emulator' >> ~/.zshrc
echo 'export PATH=$PATH:$ANDROID_HOME/tools' >> ~/.zshrc
echo 'export PATH=$PATH:$ANDROID_HOME/tools/bin' >> ~/.zshrc
echo 'export PATH=$PATH:$ANDROID_HOME/platform-tools' >> ~/.zshrc

echo ------------- Configure Android Emulators -------------
sdkmanager --install "cmdline-tools;latest"
sdkmanager --install "build-tools;30.0.3"
sdkmanager --install "emulator"
sdkmanager --install "platform-tools"
sdkmanager --install "platforms;android-30"
sdkmanager --install "sources;android-30"
sdkmanager --install "system-images;android-30;google_apis;x86_64"
sdkmanager --install "system-images;android-30;default;x86_64"

echo ------------- Configure iOS Simulator -------------
xcversion simulators --install='iOS 14.5'
xcrun simctl create 'iPhone X' 'iPhone X' 'iOS14.5'

echo ------------- Doctor Brew -------------
brew doctor

echo ------------- Cleanup Brew -------------
brew cleanup
