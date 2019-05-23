echo
echo "Installing most recent version of Java"
brew tap caskroom/versions
brew cask install java11
source ${MY_DIR}/scripts/opt-in/java-tools.sh
