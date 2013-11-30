# finderLockdown.sh
# Last updated: 11/28/13 - code-for-coffee 
# https:#code-for-coffee.github.com
#
# Use:
# This script is designed to lock down Finder
# by:
#
# * Disabling Dashboard
# * Locking the Dock
# * Hide System Files
# * Disable LogMeIn from the menubar
# * to hide the LogMeIn icon from the dock,
#   insert the XML in logmeinRevision.xml into
#	/Applications/LogMeIn.app/info.plist
# * Run your own Login scripts, too.
#
#  Released under the MIT License
#  james@codeforcoffee.org, 2013
#  See Readme file for more info.
#
#
# --------------------------------------------

# Locks the Finder down; disabled Dashboard and 
# 
defaults write com.apple.dashboard mcx-disabled -bool true
defaults write com.apple.dock contents-immutable -bool true
killall Dock

# hide sys files
defaults write com.apple.finder AppleShowAllFiles FALSE

# remove LogMeIn from Menu Bar
launchctl remove com.logmein.logmeingui
sudo chmod +x /Library/Username/login.sh  										# edit as needed
# Run your own Login script(s)
#sudo defaults write com.apple.loginwindow LoginHook /Library/Username/login.sh 	# edit as needed
remove MenuBar from /applicationsupport/launchagents/logmein/

# enable "Simple" finder
defaults write com.apple.finder InterfaceLevel simple
killall Finder