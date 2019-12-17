#!/bin/bash -eux
cd $GITHUB_WORKSPACE/zfs
./autogen.sh
./configure --with-config=srpm

make -j1 pkg-utils deb-dkms

ls -l
