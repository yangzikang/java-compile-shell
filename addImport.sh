#! /bin/bash
addText='';

#import java.util.ArrayList;
#import java.util.HashMap;
#import java.util.List;
#import java.util.Map;

for file in `ls`
do
	extName=${file##*.}
	if [ $extName = 'java' ]
	then
		removeImport=`sed '/import/d' $file`

		arrayList=`grep "ArrayList" $file`;
		list=`grep "List" $file`;
		hashMap=`grep "HashMap" $file`;
		map=`grep "Map" $file`

		if [ ${#arrayList} -gt 0 ]
		then
		 	addText+="import java.util.ArrayList;" 
		fi

		if [ ${#list} -gt 0 ]
		then
		 	addText+="import java.util.List;" 
		fi

		if [ ${#hashMap} -gt 0 ]
		then
		 	addText+="import java.util.HashMap;" 
		fi

		if [ ${#map} -gt 0 ]
		then
		 	addText+="import java.util.Map;" 
		fi

		touch "temp";
		echo $addText >> "temp"
		addText=""
		echo $removeImport >> "temp"
		rm -rf $file
		mv temp $file
	fi
done