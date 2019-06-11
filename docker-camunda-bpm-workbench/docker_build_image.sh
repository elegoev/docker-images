#!/bin/bash

# read version from file
version=`cat version 2>> /dev/null`
if [ "$version" == "" ]
then
   exit 1
fi
echo "version = $version"

docker build --rm -t elegoev/camunda-bpm-workbench .
echo "elegoev/camunda-bpm-workbench created ..."

docker tag elegoev/camunda-bpm-workbench elegoev/camunda-bpm-workbench:$version
echo "elegoev/camunda-bpm-workbench $version tag created ..."
