#!/bin/bash

echo "Downloading TK ${TK_CHECKOUT} and building into $TK_BUILD_DIR"
git clone $TK_URL

cd $TK_DIR

git checkout $TK_CHECKOUT

cd $TK_BUILD_DIR

./configure --enable-shared --enable-64bit --with-tcl=$LIB_DIR --prefix=$EXTERNALS_DIR

make -j6

make install

cd $BUILD_DIR
