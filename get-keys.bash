#!/bin/bash
cd ~
mkdir -p .ssh
auth=".ssh/authorized_keys"
url="https://raw.githubusercontent.com/NiiWiiCamo/ssh/master/keys"
touch $auth
date + "%Y-%m-%d %T" >> $auth
curl -sSL $url >> $auth
