#! /bin/bash
for file in `ls`
do
	basename="${file%%.*}"
    extension="${file##*.}";
	if [ $extension = 'java' ]; 
	then
		find=`grep "static" $file | grep "main" | grep "args"`;
		if [ ${#find} -gt 0 ]
		then	
			echo "主类文件"$file
			echo "--- 运行中 ---"
			java $basename
		fi
	fi
done