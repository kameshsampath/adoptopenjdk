#!/bin/bash
set -e

npm -g install fish-pepper

sudo curl -L  https://raw.githubusercontent.com/aelsabbahy/goss/v0.3.5/extras/dgoss/dgoss -o  /usr/bin/dgoss
sudo chmod +rx /usr/bin/dgoss