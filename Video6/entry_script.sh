#!/bin/bash
while true
do
   sleep 5
   echo "file $1 replace string $2 with $3"
   sed -i "s/$2/$3/" read-write/$1
done
