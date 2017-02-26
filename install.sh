#!/bin/dash -e
ln -sfv "$PWD"/awklib "$PWD"/shlib /usr/local/bin
mkdir -pv /usr/local/share
ln -sfv "$PWD"/libstd.awk "$PWD"/libstd.sh "$PWD"/stdlib.txt /usr/local/share
