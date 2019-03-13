#!/bin/bash

sudo apt-get update
sudo apt-get install ca-certificates curl openssh-server postfix
cd /tmp
curl -LO https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh
less /tmp/script.deb.sh
sudo bash /tmp/script.deb.sh
sudo apt-get install gitlab-ce