#!/bin/bash
jsonname=file.json

cat ${jsonname} |jq -r '.[] |select(.gender == "M") |select(.grade > 55) |.fileinfo +"#" + .id' |while read record 
do 
  id=$(echo ${record} |cut -d "#" -f2)
  filename=$(echo ${record} |cut -d "#" -f1)
  number=$(cat $filename |grep "^number" |cut -d ":" -f2)
  echo "${id},${number}">>result.csv
done 

clear 
cat result.csv
