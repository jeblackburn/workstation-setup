echo
echo "Installing most recent version of Java"
sudo apt-get -y install default-jdk
git clone https://github.com/jenv/jenv.git ~/.jenv
echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.bash_profile
source ~/.bash_profile
echo 'eval "$(jenv init -)"' >> ~/.bash_profile
source ${MY_DIR}/scripts/opt-in/linux/java-tools.sh
