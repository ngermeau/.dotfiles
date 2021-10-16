#!/usr/bin/bash


# list recursively all filenames extension 

shopt -s globstar
declare -A extensions 

for filename_with_path in **/* 
do
  if [ -f "$filename_with_path" ]; then 
    filename=$(basename "$filename_with_path")
    extension="${filename##*.}"
    extensions[$extension]=true
  fi
done
for i in ${!extensions[@]}
do
echo ${i}
done


