#!/usr/bin/env bash
#
# setup.sh:  run the Pivotal workstation setup
#
# Arguments:
#   - a list of components to install, see scripts/opt-in/ for valid options
#
# Environment variables:
#   - SKIP_ANALYTICS:  Set this to 1 to not send usuage data to our Google Analytics account 
#

# Fail immediately if any errors occur
set -e

echo "Caching password..."
sudo -K
sudo true;
clear

MY_DIR="$(dirname "$0")"

# Note: Homebrew needs to be set up first
source ${MY_DIR}/scripts/common/linux/configuration-bash.sh

# Place any applications that require the user to type in their password here

source ${MY_DIR}/scripts/common/linux/git.sh
source ${MY_DIR}/scripts/common/git-aliases.sh
source ${MY_DIR}/scripts/common/linux/cloud-foundry.sh
source ${MY_DIR}/scripts/common/linux/applications-common.sh
source ${MY_DIR}/scripts/common/linux/configurations.sh

# For each command line argument, try executing the corresponding script in opt-in/
for var in "$@"
do
    echo "$var"
    FILE=${MY_DIR}/scripts/opt-in/linux/${var}.sh
    echo "$FILE"
    if [ -f $FILE ]; then
        source ${FILE}
    else
       echo "Warning: $var does not appear to be a valid argument. File $FILE does not exist."
    fi
done

source ${MY_DIR}/scripts/common/linux/finished.sh
