#!/bin/bash

if [ -f ~/.bashrc ]; then
	mv ~/.bashrc ~/.bashrc_orig
fi
for d in xorg vim bash mutt; do
	for f in $d/*; do
		ln -s `pwd`/$f ~/.`basename $f`
	done
done
