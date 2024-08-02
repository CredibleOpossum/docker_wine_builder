#!/usr/bin/env bash


build_dir=/app/wine_build
export CFLAGS_X32="-march=i686 -msse2 -mfpmath=sse -O2 -ftree-vectorize"
export CFLAGS_X64="-march=x86-64 -msse3 -mfpmath=sse -O2 -ftree-vectorize"
export WINE_VERSION="master"
export WINE_NAME="wine-${WINE_VERSION}"
export WINE_BUILD_OPTIONS="--without-ldap --without-oss --disable-winemenubuilder --disable-win16 --disable-tests"
cd "${build_dir}"

mkdir "${build_dir}"/wine64
cd "${build_dir}"/wine64
/app/wine/configure --enable-win64 ${WINE_BUILD_OPTIONS} --prefix "${build_dir}"/"${WINE_NAME}"
make -j$(nproc)
make install

mkdir "${build_dir}"/wine32
cd "${build_dir}"/wine32
PKG_CONFIG_PATH="/usr/lib32/pkgconfig" /app/wine/configure --with-wine64="${build_dir}"/wine64 ${WINE_BUILD_OPTIONS} --prefix "${build_dir}"/"${WINE_NAME}"
make -j$(nproc)
make install
