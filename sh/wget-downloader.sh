while read file ; do \
    wget -np -nd -c -r "${file}" ; \
done < download-list
