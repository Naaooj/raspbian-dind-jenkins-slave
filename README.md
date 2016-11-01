# Raspbian with Jessie running Docker in Docker

The aim of this image is to be able to use a jenkins slave running on a arm architecture.  
It has been desinged to run on a Raspberry PI 3 under Hypriot OS.

It is based on [resin/rpi-raspbian:jessie](https://hub.docker.com/r/resin/rpi-raspbian/tags/).  
It includes openssh-server, curl, iptables, git, ca-certificates, libdev, libc6 , openjdk-8-jdk and docker.  
Docker is based on the version provided by [Hypriot](https://packagecloud.io/Hypriot/Schatzkiste/packages/debian/wheezy/docker-hypriot_1.10.3-1_armhf.deb) for [Jessie](https://www.debian.org/releases/jessie/).

The default credentials are:
* username : jenkins
* password : jenkins

The port 22 is exposed by default and the default command starts the ssh daemon.

The image can be found on [docker hub](https://hub.docker.com/r/naaooj/raspbian-dind-jenkins-slave/).
