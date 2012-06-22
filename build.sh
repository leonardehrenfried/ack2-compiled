#! /usr/bin/env bash -e

# you need to have File:Next and Test:Next installed for this to work

BASE=`pwd`
cd ../ack2
echo "Change working dir to ../ack2"
git pull
perl Makefile.PL
make
make test
VERSION=`cat Makefile|grep "VERSION_SYM = "|cut -d" " -f 3`
cp ack-standalone ../ack2-compiled/builds/ack-standalone-$VERSION

