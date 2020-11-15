apt update -y &&
apt upgrade -y &&
apt install -y curl git openssh nodejs php apache2 php mariadb sqlite python vim php-apache
# ================= YARN PACKAGES =============
npm install -g yarn
yarn global add heroku commitizen firebase-tools create-react-app
