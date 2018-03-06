#!/bin/bash
set -e
sudo npm -g install fish-pepper

cd $HOMEDIR
mkdir -p $HOMEDIR/bin

curl -L  https://github.com/aelsabbahy/goss/releases/download/v0.3.5/goss-linux-amd64 -o $HOMEDIR/bin/goss
chmod +rx $HOMEDIR/bin/goss

curl -L  https://raw.githubusercontent.com/aelsabbahy/goss/v0.3.5/extras/dgoss/dgoss -o $HOMEDIR/bin/bin/dgoss
chmod +rx $HOMEDIR/bin/dgoss

export PATH=$PATH:$HOMEDIR/bin