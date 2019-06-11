#!/bin/bash

# read version from file
version=`cat version 2>> /dev/null`
if [ "$version" == "" ]
then
   exit 1
fi
echo "version = $version"

docker build --rm -t elegoev/nginx .
echo "elegoev/nginx created ..."

docker tag elegoev/nginx elegoev/nginx:$version
echo "elegoev/nginx $version tag created ..."
