#!/bin/bash

# read version from file
version=`cat version 2>> /dev/null`
if [ "$version" == "" ]
then
   exit 1
fi
echo "version = $version"

docker build --rm -t elegoev/drupal-drush-7 .
echo "elegoev/dockerui created ..."

docker tag elegoev/drupal-drush-7 elegoev/drupal-drush-7:$version
echo "elegoev/dockerui $version tag created ..."
