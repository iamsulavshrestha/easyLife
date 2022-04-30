apt update -y &&
apt upgrade -y &&
#apt install -y curl git openssh nodejs php apache2 php mariadb sqlite python vim php-apache
apt install -y curl openssh nodejs sqlite vim npm openjdk-8-jdk openjdk-11-jdk openjdk-17-jdk
# ================= YARN PACKAGES =============
npm install -g yarn
yarn global add heroku commitizen firebase-tools create-react-app express express-generator
