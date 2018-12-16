echo
echo "Installing Cloud Foundry Command-line Interface"
wget -q -O - https://packages.cloudfoundry.org/debian/cli.cloudfoundry.org.key | sudo apt-key add -
echo "deb https://packages.cloudfoundry.org/debian stable main" | sudo tee /etc/apt/sources.list.d/cloudfoundry-cli.list
sudo apt-get update

sudo apt-get -y install cf-cli

sudo wget https://github.com/cloudfoundry/bosh-cli/releases/download/v5.4.0/bosh-cli-5.4.0-linux-amd64
sudo chmod +x ./bosh-cli-5.4.0-linux-amd64
sudo mv ./bosh-cli-5.4.0-linux-amd64 /usr/local/bin/bosh
# sudo apt-get -y install bbl
