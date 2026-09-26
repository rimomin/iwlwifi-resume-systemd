#!/bin/sh
NAME=iwlwifi-resume
VERSION=1.0.0
ARCH=all
BUILD_DIR=deb

PACKAGE=${NAME}_${VERSION}_$ARCH
WORK_DIR=$BUILD_DIR/$PACKAGE

mkdir -p $WORK_DIR
cp -r DEBIAN $WORK_DIR/

mkdir -p $WORK_DIR/usr/lib/systemd/system
cp iwlwifi-resume.service $WORK_DIR/usr/lib/systemd/system/

mkdir -p $WORK_DIR/usr/share/doc/iwlwifi-resume
cp copyright $WORK_DIR/usr/share/doc/iwlwifi-resume/
cat LISENCE >> $WORK_DIR/usr/share/doc/iwlwifi-resume/copyright
cp README $WORK_DIR/usr/share/doc/iwlwifi-resume/

cd deb
dpkg-deb --build $PACKAGE
