#!/bin/bash

# read version from file
version=`cat version 2>> /dev/null`
if [ "$version" == "" ]
then
   exit 1
fi
echo "version = $version"

docker build --rm -t elegoev/dockerui .
echo "elegoev/dockerui created ..."

docker tag elegoev/dockerui elegoev/dockerui:$version
echo "elegoev/dockerui $version tag created ..."
