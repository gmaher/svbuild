#!/bin/bash
echo "Downloading mmg $MMG_CHECKOUT and building into $MMG_BUILD_DIR"

CMAKE_OPTIONS="-DBUILD_SHARED_LIBS=ON \
-DLIBMMG2D_SHARED=ON -DLIBMMG2D_STATIC=OFF \
-DLIBMMG3D_SHARED=ON -DLIBMMG3D_STATIC=OFF \
-DLIBMMGS_SHARED=ON -DLIBMMGS_STATIC=OFF \
-DLIBMMG_SHARED=ON -DLIBMMG_STATIC=OFF \
-DCMAKE_INSTALL_PREFIX=$EXTERNALS_DIR"

git clone $MMG_URL

cd $MMG_DIR

git checkout $MMG_CHECKOUT

mkdir $MMG_BUILD_DIR

cd $MMG_BUILD_DIR

cmake .. $CMAKE_OPTIONS

make -j6

make install

cd $BUILD_DIR
