#! /bin/bash
cd $(cd `dirname $0`; pwd)
for file in `ls`
do
	extName=${file##*.}
	if [ $extName = 'class' ]
	then
		rm -rf "$file";
	fi
done