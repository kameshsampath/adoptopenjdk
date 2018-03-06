#!/bin/bash
set -e


npm -g install fish-pepper

mkdir -p $PWD/bin

curl -L  https://github.com/aelsabbahy/goss/releases/download/v0.3.5/goss-linux-amd64 -o $PWD/bin/goss
chmod +rx $PWD/bin/goss

curl -L  https://raw.githubusercontent.com/aelsabbahy/goss/v0.3.5/extras/dgoss/dgoss -o  $PWD/bin/dgoss
chmod +rx $PWD/bin/dgoss

export PATH=$PATH:$HOMEDIR/bin