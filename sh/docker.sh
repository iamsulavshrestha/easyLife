#!/bin/bash

## configuring and installing docker
#apt-get install linux-image-extra-`uname -r`
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

#curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
#add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update -y
#apt-cache policy docker-ce
#apt install -y docker-ce docker-compose
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

sudo usermod -aG docker $USER
sudo chmod 666 /var/run/docker.sock
echo "Remember to logout to work properly"
##dockApps=("mariadb" "node" "httpd:alpine" "alpine" "docker" "swarm" "nginx" "redis" "ubuntu" "mysql" "mongo" "memcached" "wordpress" "ruby" "python" "php" "jenkins" "haproxy" "drupal" "joomla" "mono" "gradle" "couchbase" "composer")
dockApps=("node" "mysql" "postgres")
## now loop through the above array
for i in {dockApps[@]}; 
do
   docker pull "$i"
          # or do whatever with individual element of the array
done     
