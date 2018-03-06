#!/bin/bash 

set -e 

# this will not run until image is pushed to docker hub ok to fail for local builds
docker pull docker.io/kameshsampath/java-centos-openjdk9-hotspot || true
docker pull docker.io/kameshsampath/java-debian-openjdk9-hotspot || true

i=0
time dgoss run kameshsampath/java-centos-openjdk9-hotspot bash -c 'tail -f /dev/null' || ((i++))
time dgoss run kameshsampath/java-debian-openjdk9-hotspot bash -c 'tail -f /dev/null' || ((i++))

exit $i