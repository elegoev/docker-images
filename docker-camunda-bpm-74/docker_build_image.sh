#!/bin/bash

# read version from file
version=`cat version 2>> /dev/null`
if [ "$version" == "" ]
then
   exit 1
fi
echo "version = $version"

docker build --rm -t elegoev/camunda-bpm-74 .
echo "elegoev/camunda-bpm-74 created ..."

docker tag elegoev/camunda-bpm-74 elegoev/camunda-bpm-74:$version
echo "elegoev/camunda-bpm-74 $version tag created ..."
