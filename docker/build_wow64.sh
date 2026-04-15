#!/usr/bin/env bash
export WINE_BUILD_OPTIONS="--without-ldap --without-oss --disable-winemenubuilder --disable-win16 --disable-tests"
mkdir wine_master
../wine/configure ${WINE_BUILD_OPTIONS} --prefix $(realpath ./wine_master)
make -j`nproc`
make install