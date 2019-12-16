#!/bin/bash -eux

./autogen.sh
./configure --with-config=srpm

make -j1 pkg-utils deb-dkms

for file in *.deb; do sudo gdebi -q --non-interactive $file; done
ls -l