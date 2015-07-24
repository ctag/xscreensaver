#!/bin/bash

orig_dir=~/Downloads/xscreensaver-5.33
mod_dir=~/Documents/xscreensaver

cd ~/Downloads

curl -L http://www.jwz.org/xscreensaver/xscreensaver-5.33.tar.gz -o xscreensaver-5.33.tar.gz
tar xzf ${orig_dir}.tar.gz

cd $orig_dir

cp $mod_dir/hacks/xmatrix.c hacks/xmatrix.c.mod
cp $mod_dir/hacks/config/xmatrix.xml hacks/config/xmatrix.xml.mod
cp $mod_dir/hacks/xmatrix.man hacks/xmatrix.man.mod

diff -aur hacks/xmatrix.c hacks/xmatrix.c.mod > $mod_dir/xmatrix-color.diff
diff -aur hacks/config/xmatrix.xml hacks/config/xmatrix.xml.mod >> $mod_dir/xmatrix-color.diff
diff -aur hacks/xmatrix.man hacks/xmatrix.man.mod >> $mod_dir/xmatrix-color.diff

rm -rf ~/Downloads/xscreensaver-5.33*
