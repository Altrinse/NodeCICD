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
 ./.nvm/nvm.sh
nvm install 14


npm install
npm run build
set -e
cd /home/ec2-user/NodeCICD