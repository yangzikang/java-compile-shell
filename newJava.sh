#! /bin/bash
cd $(cd `dirname $0`; pwd)
fileName=`date +%Y%m%d%H%M%S`".java"
touch $fileName
pbpaste >> $fileName 2>&1