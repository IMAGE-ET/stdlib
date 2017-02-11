#!/bin/dash -e
ln -sfv "$PWD"/stdlib /usr/local/bin
mkdir -pv /usr/local/share
ln -sfv "$PWD"/libstd.awk "$PWD"/libstd.sh /usr/local/share
