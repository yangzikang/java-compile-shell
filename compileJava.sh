#! /bin/bash
for file in `ls`
do
	basename="${file%%.*}"
    extension="${file##*.}";
	if [ $extension = 'java' ]; 
	then
			echo "--- 编译"$file"中 ---"
			javac $file;
	fi
done