#!/bin/bash

for i in $(seq 100)
do
    hash_extender --data read.php --secret $i --append ":index.php:guinjutsu.php" --signature 184b5d255817fc0afe9316e67c8f386506a3b28b470c94f47583b76c7c0ec1e5 --format sha256 --out-data-format=html | grep "New" | cut -d ' ' -f3 | sed ':a;N;$!ba;s/\n/|/g' >> hashes

done

