## now loop through the above array
for i in "mariadb" "node" "httpd:alpine" "alpine" "docker" "swarm" "nginx" "redis" "ubuntu" "mysql" "mongo" "memcached" "wordpress" "ruby" "python" "php" "jenkins" "haproxy" "drupal" "joomla" "mono" "gradle" "couchbase" "blackfire" "mssql-server-linux" "eclipse-che"
do
       docker pull "$i"
          # or do whatever with individual element of the array
done      
