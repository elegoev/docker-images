#!/bin/bash

# read version from file
version=`cat version 2>> /dev/null`
if [ "$version" == "" ]
then
   exit 1
fi
echo "version = $version"

# get latest tag
latesttag=`git describe 2>> /dev/null`
echo "latest version = $latesttag"


if [ "$version" == "$latesttag" ]
then
   echo "tag exists"
else

   git add --all
   if [ $? -ne 0 ]
   then
      exit 1
   fi

   git commit -m "release version $version"
   if [ $? -ne 0 ]
   then
      exit 1
   fi

   git push
   if [ $? -ne 0 ]
   then
      exit 1
   fi

   git tag -a $version -m "release version $version"
   if [ $? -ne 0 ]
   then
      exit 1
   fi

   git push --tags
   if [ $? -ne 0 ]
   then
      exit 1
   fi

   echo "docker image successful released"
fi
