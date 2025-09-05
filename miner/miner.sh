#!/bin/bash


echo "Starting this script (hopefully it is executable with chmod a+x ./miner.sh)"

VARIABLE=some_string

echo $VARIABLE

## Prints all words in provided dictionary
## (you might want to find a bigger dictionary)
#iterate through dictionary
for word in $(cat ../data/dictionary); do
	echo " $word"
	nonce=0
	while true; do
		coin="${nonce}${word}"
		#https://stackoverflow.com/questions/47406014/how-to-cut-an-existing-variable-and-assign-to-a-new-variable-in-bash
		hash=$(printf "%s" "$coin" | sha256sum | cut -d' ' -f1)
		if [[ $hash == 000* ]]; then
			echo " $nonce"
			echo " $hash"
			break
		fi
		#try new nonce
		nonce=$((nonce + 1))
	done
done


## prints all numbers between 100 and 105
#for i in $(seq 100 105); do
 # printf $i
#done


