### docker-drush-7
docker build for [drush](https://github.com/drush-ops/drush)

[![](https://badge.imagelayers.io/elegoev/drush-7:latest.svg)](https://imagelayers.io/?images=elegoev/drush-7:latest 'Get your own badge on imagelayers.io')
[![GitHub version](https://badge.fury.io/gh/elegoev%2Fdocker-drush-7.svg)](https://badge.fury.io/gh/elegoev%2Fdocker-drush-7)
[![Documentation Status](https://readthedocs.org/projects/drush/badge/?version=7.x)](http://docs.drush.org/en/7.x/?badge=7.x)
[![Stories in Ready](https://badge.waffle.io/elegoev/docker-drush-7.png?label=ready&title=Ready)](https://waffle.io/elegoev/docker-drush-7)

#### Drush Commands
Check drush commands [here](http://drushcommands.com/)

#### Versioning
Repository follows sematic versioning  [![](https://img.shields.io/badge/semver-2.0.0-green.svg)](http://semver.org)


#### Scripts
docker_build_image.sh         
* Creates local image for testing

docker_release_image.sh
* Creates a tag with the defined version on [Github](http://github.com)
* Image is automated created on [Dockerhub](https://hub.docker.com/r/elegoev/drush-7/)

#### Usage

Go to app directory, run the container with `docker run`, mounting the `/app` volume:

``` bash
docker run --rm elegoev/drush-7 -v $(pwd):/app
docker run --rm elegoev/drush-7 -v $(pwd):/app help
docker run --rm elegoev/drush-7 -v $(pwd):/app --version
docker run --rm elegoev/drush-7 -v $(pwd):/app status
```

#### Changelog
For all notable changes see [CHANGELOG](https://github.com/elegoev/docker-drush-7/blob/master/CHANGELOG.md)

#### License
Licensed under The MIT License (MIT) - for the full copyright and license information, please view the [Licence](https://github.com/elegoev/docker-drush-7/blob/master/Licence) file.

#### Issue Reporting
Any and all feedback is welcome.  Please let me know of any issues you may find in the bug tracker on github. You can find it [here. ](https://github.com/elegoev/docker-drush-7/issues)
