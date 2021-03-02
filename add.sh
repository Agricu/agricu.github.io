#!/bin/sh
apt-ftparchive packages ./debfiles > ./Packages;
#sed -i -e '/^SHA/d' ./Packages;
bzip2 -c9k ./Packages > ./Packages.bz2;
tar zcvf ./Packages.gz ./Packages;
exit 0;