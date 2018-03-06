#!/bin/bash
set -e

SCRIPTDIR=$(cd $(dirname "$0") && pwd)
TESTDIR="${SCRIPTDIR}/../../test"

cd $(dirname $TESTDIR)
IFS=$'\n'
find . -type f -name 'test.sh' | awk -F'/[^/]*$' '{print $1}' | while read -r d; 
do
  echo "Running tests for $d"
  $(cd $d;./test.sh)
done