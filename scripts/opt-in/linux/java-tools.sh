echo
echo "Installing Java Development tools"
sudo snap install intellij-idea-community --classic
sudo apt-get -y install maven
sudo apt-get -y install gradle

source ${MY_DIR}/scripts/common/download-pivotal-ide-prefs.sh
pushd ~/workspace/pivotal_ide_prefs/cli
./bin/ide_prefs install --ide=intellij
popd
