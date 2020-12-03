#!/bin/bash
cd ~
mkdir -p .ssh
auth=".ssh/authorized_keys"
url="https://raw.githubusercontent.com/NiiWiiCamo/ssh/master/keys"
tmp=".keys.tmp"
touch $auth
curl -sL -o $tmp $url
if [ -f $tmp ]
then
date +"%Y-%m-%d %T" > $auth && cat $tmp >> $auth
fi
rm $tmp
