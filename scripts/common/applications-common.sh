# All these applications are independent, so if one
# fails to install, don't stop.
set +e

echo
echo "Installing applications"

# Utilities

brew cask install flycut
brew cask install shiftit
echo
echo "configure shiftit to select 1/3 screen width, 1/2 screen width and 2/3 screen width:"
echo "`defaults write org.shiftitapp.ShiftIt multipleActionsCycleWindowSizes YES`"
echo
brew cask install postman
brew cask install quicklook-json

# Terminals

brew cask install iterm2

# Browsers

brew cask install firefox

# Communication

brew cask install slack

# Text Editors

brew cask install textmate
brew cask install jetbrains-toolbox --force # guard against pre-installed jetbrains-toolbox
brew cask install visual-studio-code
echo
echo "Installing the VS Code extensions and snippets."
cp files/vscode/java.json ~/Library/Application\ Support/Code/User/snippets/
code --install-extension bungcip.better-toml
code --install-extension formulahendry.code-runner
code --install-extension johnpapa.vscode-peacock
code --install-extension k--kato.intellij-idea-keybindings
code --install-extension karigari.chat
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension ms-vsliveshare.vsliveshare-audio
code --install-extension ms-vsliveshare.vsliveshare-pack
code --install-extension naco-siren.gradle-language
code --install-extension Pivotal.vscode-boot-dev-pack
code --install-extension Pivotal.vscode-concourse
code --install-extension Pivotal.vscode-manifest-yaml
code --install-extension Pivotal.vscode-spring-boot
code --install-extension redhat.java
code --install-extension VisualStudioExptTeam.vscodeintellicode
code --install-extension vscjava.vscode-java-debug
code --install-extension vscjava.vscode-java-dependency
code --install-extension vscjava.vscode-java-pack
code --install-extension vscjava.vscode-java-test
code --install-extension vscjava.vscode-maven
code --install-extension vscjava.vscode-spring-boot-dashboard
code --install-extension vscjava.vscode-spring-initializr
set -e
