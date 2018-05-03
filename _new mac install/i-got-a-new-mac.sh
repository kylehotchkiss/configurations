echo "Please enter your password as some commands require sudo"
sudo -v

# Make user setup Filevault
echo "Enabling Filevault"
sudo fdesetup enable

# Turn on Firewall
echo "Enabling Firewall"
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate on
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setstealthmode on

# Lock screen immediately with password
echo "Requiring password after screen locked"
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Coffeeshop Security: Bottom right corner hotspot locks screen
echo "Setting bottom right corner spot to lock screen"
echo "Use this at coffeeshops when you step away from laptop for a moment"
defaults write com.apple.dock wvous-br-corner -int 10
defaults write com.apple.dock wvous-br-modifier -int 0

# Install Homebrew
echo "Installing Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install dev tools
echo "Installing Node.js and Yarn Package Manager"
brew install node yarn

# Install OSX Command line tools
echo "Installing Xcode-tools (git and C compiler for binary packages)"
xcode-select --install

# Install Cask for Mac OS Apps
echo "Installing some Mac OS apps to save you some time"
brew tap caskroom/cask

# Install some Apps
brew cask install 1password alfred google-chrome google-drive-file-stream sequel-pro sketch spotify slack visual-studio-code sublime-text

# Install NVM (Requires editing .bashrc)
# curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

