## now loop through the above array
for i in "mariadb" "node"
do
       docker pull "$i"
          # or do whatever with individual element of the array
done      