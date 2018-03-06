#!/bin/bash
set -e
npm -g install fish-pepper

sudo curl -L  https://github.com/aelsabbahy/goss/releases/download/v0.3.5/goss-linux-amd64 -o /usr/local/bin/goss
sudo chmod +rx /usr/local/bin/goss

sudo curl -L  https://raw.githubusercontent.com/aelsabbahy/goss/v0.3.5/extras/dgoss/dgoss -o /usr/local/bin/dgoss
sudo chmod +rx /usr/local/bin/dgoss