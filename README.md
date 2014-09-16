packer-deb
==========

Unofficial scripts to build packer.deb .

Package does only what is described on official site http://www.packer.io/docs/installation.html . Compiled binaries are installed at /usr/lib/packer/, /usr/bin/packer is symlink to -> /usr/lib/packer/packer.

This is the shortest packagin option with uses fpm. In order to package properly, as on debian site a full compile, test package cycle would be nice.

Requirements
======
 * fpm
 * unzip
 * wget

Usage
======

```
git clone https://github.com/tomzo/packer-deb.git
cd packer-deb
./build.sh

```

As a result you will get something like packer_0.7.1_amd64.deb . build.sh can be adjusted to use other packer version or other architecture. 