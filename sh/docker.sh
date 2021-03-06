## configuring and installing docker
apt-get install linux-image-extra-`uname -r`
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get update
apt-cache policy docker-ce
apt-get install -y docker-ce
usermod -aG docker $USER
echo "Remember to logout to work properly"
## now loop through the above array
for i in "mariadb" "node" "httpd:alpine" "alpine" "docker" "swarm" "nginx" "redis" "ubuntu" "mysql" "mongo" "memcached" "wordpress" "ruby" "python" "php" "jenkins" "haproxy" "drupal" "joomla" "mono" "gradle" "couchbase" "composer"
do
       docker pull "$i"
          # or do whatever with individual element of the array
done      
