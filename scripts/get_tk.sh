#!/bin/bash

echo "Downloading TK ${TK_CHECKOUT} and building into $TK_BUILD_DIR"
git clone $TK_URL

cd $TK_DIR

git checkout $TK_CHECKOUT

cd $TK_BUILD_DIR

./configure --enable-shared --enable-64bit --with-tcl=$TCL_BUILD_DIR

make -j6

cd $BUILD_DIR
