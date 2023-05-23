#!/bin/bash

#create our working directory if it doesnt exist
DIR="/home/ec2-user/NodeCICD"
if [ -d "$DIR" ]; then
  echo "${DIR} exists"
else
  echo "Creating ${DIR} directory"
  mkdir ${DIR}
fi

set -e
cd /home/ec2-user


#download node and npm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
chmod +x ~/.nvm/nvm.sh
export NVM_DIR="$HOME/.nvm/"

[ -s "$NVM_DIR\nvm.sh" ] && \. "$NVM_DIR\nvm.sh"  # This loads nvm
[ -s "$NVM_DIR\bash_completion" ] && \. "$NVM_DIR\bash_completion"  # This loads nvm bash_completion

nvm install 14



set -e
cd /home/ec2-user/NodeCICD