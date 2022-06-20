## configuring and installing docker
#apt-get install linux-image-extra-`uname -r`
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt update
apt-cache policy docker-ce
apt install -y docker-ce docker-compose
usermod -aG docker $USER
echo "Remember to logout to work properly"
##dockApps=("mariadb" "node" "httpd:alpine" "alpine" "docker" "swarm" "nginx" "redis" "ubuntu" "mysql" "mongo" "memcached" "wordpress" "ruby" "python" "php" "jenkins" "haproxy" "drupal" "joomla" "mono" "gradle" "couchbase" "composer")
dockApps=("node" "mysql" "apacheignite/ignite" "postgres")
## now loop through the above array
for i in ${dockApps[@]}; 
do
   docker pull "$i"
          # or do whatever with individual element of the array
done     
