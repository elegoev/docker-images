### docker-drupal-drush
docker build for [drupal](https://www.drupal.org) and [drush](https://github.com/drush-ops/drush)

[![](https://badge.imagelayers.io/elegoev/drupal-drush-7:latest.svg)](https://imagelayers.io/?images=elegoev/drupal-drush-7:latest 'Get your own badge on imagelayers.io')
[![GitHub version](https://badge.fury.io/gh/elegoev%2Fdocker-drupal-drush-7.svg)](https://badge.fury.io/gh/elegoev%2Fdocker-drupal-drush-7)
[![Documentation Status](https://readthedocs.org/projects/drush/badge/?version=7.x)](http://docs.drush.org/en/7.x/?badge=7.x)
[![Stories in Ready](https://badge.waffle.io/elegoev/docker-drupal-drush-7.png?label=ready&title=Ready)](https://waffle.io/elegoev/docker-drupal-drush-7)
#### Versioning
Repository follows sematic versioning  [![](https://img.shields.io/badge/semver-2.0.0-green.svg)](http://semver.org)

#### Scripts
docker_build_image.sh         
* Creates local image for testing

docker_release_image.sh
* Creates a tag with the defined version on [Github](http://github.com)
* Image is automated created on [Dockerhub](https://hub.docker.com/r/elegoev/drupal-drush-7/)

#### Docker-Compose

Prerequisites
* Access is configured with nginx (see configuration under /data/auth)
* Domain name `drupal.developer.com` resolve to `<dockerd host ip>:80`

Create new release
* Define version number in `version`
* Create tag with `./docker_release_image.sh`
* An automated build for [elegoev/drupal-drush-7](https://hub.docker.com/r/elegoev/drupal-drush-7/) is created on dockerhub

Local image build
* Test DNS lookup `ping drupal.developer.com` (if not working check /etc/hosts)
* Create image `./docker_build_images.sh`
* Start container `docker-compose up -d`
* Start browser with `http://drupal.developer.com`

Remote image (dockerhub)
* Stop containers `docker-compose stop`
* Delete containers `docker-compose rm`
* Drop images `docker rmi elegoev/drupal-drush-7`
* Start container `docker-compose up -d`
* Start browser with `http://drupal.developer.com`

#### Changelog
For all notable changes see [CHANGELOG](https://github.com/elegoev/docker-drupal-drush-7/blob/master/CHANGELOG.md)

#### License
Licensed under The MIT License (MIT) - for the full copyright and license information, please view the [License](https://github.com/elegoev/docker-drupal-drush-7/blob/master/License) file.

#### Issue Reporting
Any and all feedback is welcome.  Please let me know of any issues you may find in the bug tracker on github. You can find it [here. ](https://github.com/elegoev/docker-drupal-drush-7/issues)
