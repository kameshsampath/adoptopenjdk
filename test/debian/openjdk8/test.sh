#!/bin/bash 

set -e 

# this will not run until image is pushed to docker hub ok to fail for local builds
docker pull docker.io/kameshsampath/openwhisk-debian-openjdk8-jdk || true
docker pull docker.io/kameshsampath/openwhisk-debian-openjdk8-jdk:jdk8u152-b16 || true

i=0
time dgoss run kameshsampath/openwhisk-centos-openjdk8-jdk bash -c 'tail -f /dev/null' || ((i++))
time dgoss run kameshsampath/openwhisk-centos-openjdk8-jdk:jdk8u152-b16 bash -c 'tail -f /dev/null' || ((i++))

exit $i