#!/bin/bash

echo "Downloading TCL ${TCL_CHECKOUT}, building into ${TCL_BUILD_DIR}"

########################
# Download and build TCL
########################
git clone $TCL_URL

cd $TCL_DIR
git checkout $TCL_CHECKOUT
cd $TCL_BUILD_DIR

./configure --enable-shared --enable-64bit --prefix=$EXTERNALS_DIR

make -j6

make install

cd $BUILD_DIR
