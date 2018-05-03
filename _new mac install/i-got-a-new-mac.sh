# Make user setup Filevault
sudo fdesetup enable

# Turn on Firewall
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate on
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setstealthmode on

# Lock screen immediately with password
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install dev tools
brew install node yarn

# Install OSX Command line tools
xcode-select --install

# Install Cask for Mac OS Apps
brew tap caskroom/cask

# Install some Apps
brew cask install 1password alfred google-chrome google-drive-file-stream sequel-pro sketch spotify slack visual-studio-code sublime-text

# Install NVM (Requires editing .bashrc)
# curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

