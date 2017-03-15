#!/bin/sh

git init mono
git -C mono remote add origin https://github.com/mono/mono
git -C mono config core.sparsecheckout true
echo mcs/class/System.Drawing/ > mono/.git/info/sparse-checkout
echo mcs/build/common/ >> mono/.git/info/sparse-checkout
git -C mono pull --depth=1 origin master
