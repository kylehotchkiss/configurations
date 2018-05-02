# OSX Dock: Add spaces
defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'
defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'
defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'
defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'

# Restart Dock
killall Dock

read -p "Move your new Dock spaces to desired location, then hit any key"

# OSX Dock
defaults write com.apple.Dock tilesize -int 48
defaults write com.apple.Dock size-immutable -bool yes
defaults write com.apple.Dock contents-immutable -bool yes
defaults write com.apple.Dock position-immutable -bool yes

# Restart Dock
killall Dock