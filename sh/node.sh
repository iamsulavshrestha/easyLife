#!/bin/bash

# install node js
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash - &&\ 
sudo apt-get install -y nodejs

# install node packages
npm install -g yarn
yarn global add heroku commitizen firebase-tools create-react-app express express-generator

# install nvm
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 
source ~/.bashrc   
