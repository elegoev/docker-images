#!/bin/bash

# read version from file
version=`cat version 2>> /dev/null`
if [ "$version" == "" ]
then
   exit 1
fi
echo "version = $version"

docker build --rm -t elegoev/drush-7 .
echo "elegoev/drush-7 created ..."

docker tag elegoev/drush-7 elegoev/drush-7:$version
echo "elegoev/drush-7 $version tag created ..."
