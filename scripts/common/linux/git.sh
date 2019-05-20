echo
echo "Installing Git and associated tools"
sudo apt-get -y install git
#sudo apt-get -y install git-duet
#sudo apt-get -y install git-pair
#sudo apt-get -y install git-together
#sudo apt-get -y install git-author

echo
echo "Putting a sample git-pair file in ~/.pairs"
cp files/.pairs ~/.pairs

echo
echo "Setting global Git configurations"
git config --global core.editor /usr/bin/vim
git config --global transfer.fsckobjects true

HOOKS_DIRECTORY=$HOME/workspace/git-hooks-core
if [ ! -d $HOOKS_DIRECTORY ]; then
  echo
  echo "Installing git hooks for cred-alert"
  # for more information see https://github.com/pivotal-cf/git-hooks-core
  git clone https://github.com/pivotal-cf/git-hooks-core $HOOKS_DIRECTORY
  git config --global --add core.hooksPath $HOOKS_DIRECTORY
else
  echo
  echo "Updating git-hooks for cred-alert"
  pushd $HOOKS_DIRECTORY
  git pull -r
  popd
fi

