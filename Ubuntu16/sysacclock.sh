#!/bin/bash
#lock sync, shutdown, and halt users
for user in `awk -F: '($3 < 1000) {print $1 }' /etc/passwd`; do
if [ $user != "root" ]; then
usermod -L $user
if [ $user != "sync" ] && [ $user != "shutdown" ] && [ $user != "halt" ];
then
usermod -s /usr/sbin/nologin $user

309 | P a g e

fi
fi
done
