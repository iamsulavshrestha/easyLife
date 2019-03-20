## now loop through the above array

while read i;
	do wget "$i" -P ~/Downloads/;
done < $PWD/downloadList.txt

