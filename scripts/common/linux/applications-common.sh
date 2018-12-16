# All these applications are independent, so if one
# fails to install, don't stop.
set +e

echo
echo "Installing applications"

# Utilities
sudo apt -y install snapd

sudo apt-get install -y copyq
# sudo apt-get -y install shiftit
echo
echo "configure shiftit to select 1/3 screen width, 1/2 screen width and 2/3 screen width:"
echo "`defaults write org.shiftitapp.ShiftIt multipleActionsCycleWindowSizes YES`"
echo
# sudo apt-get -y install dash
sudo apt-get -y install postman

# Terminals

# sudo apt-get -y install iterm2

# Browsers

# sudo apt-get -y install google-chrome
sudo apt-get -y install firefox

# Communication

sudo apt-get -y install slack
# sudo apt-get -y install skype

# Text Editors

# sudo apt-get -y install macdown
# sudo apt-get -y install sublime-text
# sudo apt-get -y install textmate
# sudo apt-get -y install macvim

set -e
