#!/bin/sh
NAME=iwlwifi-resume-systemd
VERSION=1.0.0
ARCH=all
BUILD_DIR=deb

PACKAGE=${NAME}_${VERSION}_$ARCH
WORK_DIR=$BUILD_DIR/$PACKAGE

mkdir -p $WORK_DIR
cp -r DEBIAN $WORK_DIR/

mkdir -p $WORK_DIR/usr/lib/systemd/system
cp iwlwifi-resume.service $WORK_DIR/usr/lib/systemd/system/

mkdir -p $WORK_DIR/usr/share/doc/$NAME
cp copyright $WORK_DIR/usr/share/doc/$NAME/
cat LISENCE >> $WORK_DIR/usr/share/doc/$NAME/copyright
cp README.md $WORK_DIR/usr/share/doc/$NAME/

cd deb
dpkg-deb --build $PACKAGE
