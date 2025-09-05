


#!/bin/bash



#copies users and creates a text file with unsalted users
awk -F ',' '{print $1}' quiz_data.csv | sort -u > users.txt

#creating salted-data.csv
cp quiz_data.csv salted-data.csv

#random 5-digit number variable
while read user; do
	salt=$(shuf -i 10000-99999 -n 1)

#prints user with generated salt
hash=$(printf "%s%s" "$salt" "$user" | sha256sum | awk '{print $1}')

#putting salt back onto hashed user
salted_user="${salt}${hash}"

#replacing user with new value
sed -i "s/${user}/${salted_user}/g" salted-data.csv

done < users.txt
