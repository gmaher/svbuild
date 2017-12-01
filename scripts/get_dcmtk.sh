#!/bin/bash

echo "Downloading DCMTK $DCMTK_CHECKOUT and building into $DCMTK_BUILD_DIR"

CMAKE_OPTIONS="-DCMAKE_INSTALL_PREFIX=$EXTERNALS_DIR -DBUILD_SHARED_LIBS=ON"

git clone $DCMTK_URL

cd $DCMTK_DIR

git checkout $DCMTK_CHECKOUT

mkdir $DCMTK_BUILD_DIR

cd $DCMTK_BUILD_DIR

cmake .. $CMAKE_OPTIONS

make -j6

make install
