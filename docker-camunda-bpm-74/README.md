### docker-camunda-bpm
docker build for camunda bpm

[![](https://badge.imagelayers.io/elegoev/camunda-bpm-74:latest.svg)](https://imagelayers.io/?images=elegoev/camunda-bpm-74:latest 'Get your own badge on imagelayers.io')
[![GitHub version](https://badge.fury.io/gh/elegoev%2Fdocker-camunda-bpm-74.svg)](https://badge.fury.io/gh/elegoev%2Fdocker-camunda-bpm-74)
[![Stories in Ready](https://badge.waffle.io/elegoev/docker-camunda-bpm-74.png?label=ready&title=Ready)](https://waffle.io/elegoev/docker-camunda-bpm-74)

This repo builds a docker image based on
https://github.com/camunda/docker-camunda-bpm-platform.

#### Container Quickstart
1. docker run --name camunda-bpm -p 8080:8080 -p 8090:8090 -p 9090:9090           elegoev/camunda-bpm-74

2. Open your browser to `http://<dockerd host ip>:8080/camunda-welcome`



#### Versioning
Repository follows sematic versioning  [![](https://img.shields.io/badge/semver-2.0.0-green.svg)](http://semver.org)

#### Scripts
docker_build_image.sh         
* Creates local image for testing

docker_release_image.sh
* Creates a tag with the defined version on [Github](http://github.com)
* Image is automated created on [Dockerhub](https://hub.docker.com/r/elegoev/camunda-bpm-74)

#### Docker-Compose

Prerequisites
* Access is configured with nginx (see configuration under /data/auth)
* Domain name `dockerui.developer.com` resolve to `<dockerd host ip>:80`
* Domain name `bpm.developer.com` resolve to `<dockerd host ip>:80`

Create new release
* Define version number in `version`
* Create tag with `./docker_release_image.sh`
* An automated build for [elegoev/camunda-bpm-74](https://hub.docker.com/r/elegoev/camunda-bpm-74/) is created on dockerhub

Local image build
* Test DNS lookup `ping bpm.developer.com` (if not working check /etc/hosts)
* Create image `./docker_build_images.sh`
* Start container `docker-compose up -d`
* Start browser with `http://bpm.developer.com/camunda-welcome`

Remote image (dockerhub)
* Stop containers `docker-compose stop`
* Delete containers `docker-compose rm`
* Drop images `docker rmi elegoev/camunda-bpm-74`
* Start container `docker-compose up -d`
* Start browser with `http://bpm.developer.com/camunda-welcome`

#### Changelog
For all notable changes see [CHANGELOG](https://github.com/elegoev/docker-camunda-bpm-74/blob/master/CHANGELOG.md)

#### License
Licensed under The MIT License (MIT) - for the full copyright and license information, please view the [LICENSE](https://github.com/elegoev/docker-camunda-bpm-74/blob/master/LICENSE) file.

#### Issue Reporting
Any and all feedback is welcome.  Please let me know of any issues you may find in the bug tracker on github. You can find it [here. ](https://github.com/elegoev/docker-camunda-bpm-74/issues)