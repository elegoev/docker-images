# Docker Images
Repository for Docker Images (see DockerHub [elegoev](https://hub.docker.com/u/elegoev))

### List of Docker Images
#### Actual Images
- [jenkinsci](https://github.com/elegoev/docker-jenkinsci)

#### Deprecated Images
- [camunda bpm 7.4](./docker-camunda-bpm-74)
- [camunda bpm workbench](./docker-camunda-bpm-workbench)
- [dockerui](./docker-dockerui)
- [drupal drush 7](./docker-drupal-drush-7)
- [drush 7](./docker-drush-7)
- [nginx](./docker-nginx)

### Create Development Environment
#### Development with Vagrant
1. Change to dokcer image subdirectory (e.g. cd docker-jenkinsci)
1. Create vagrantbox `vagrant up`
1. Login `vagrant ssh`
1. Change directory `cd /vagrant`
1. Build & run image `./build_image.sh`

### Create New Image Version
#### Create Release on GitHub
- see [Create Release](https://help.github.com/en/articles/creating-releases) in GitHub Help

#### Create Release with Git
- git tag \<version\> (e.g. v1.0.0)
- git push --tag

### Docker Commands
#### Docker Build
|                      | command                                            |
|----------------------|----------------------------------------------------|
| build image          | docker build --rm -t \<image name\> .              |
| shell in container   | docker exec -it \<conainer id\> \<bash \| sh\>     |

### Versioning
Repository follows sematic versioning  [![](https://img.shields.io/badge/semver-2.0.0-green.svg)](http://semver.org)

### Changelog
For all notable changes see [CHANGELOG](https://github.com/elegoev/docker-images/blob/master/CHANGELOG.md)

### License
Licensed under The MIT License (MIT) - for the full copyright and license information, please view the [LICENSE](https://github.com/elegoev/docker-images/blob/master/LICENSE) file.

### Issue Reporting
Any and all feedback is welcome.  Please let me know of any issues you may find in the bug tracker on github. You can find it [here. ](https://github.com/elegoev/docker-images/issues)
