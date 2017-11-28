#!/bin/bash

echo "Downloading opencascade and building into ${OCCT_BUILD_DIR}"

TCL_OPTIONS="-D3RDPARTY_TCL_DIR=$TCL_DIR -D3RDPARTY_TCL_INCLUDE_DIR=$TCL_INCLUDE -D3RDPARTY_TCL_LIBRARY_DIR=$TCL_LIB"

TK_OPTIONS="-D3RDPARTY_TK_DIR=$TK_DIR -D3RDPARTY_TK_INCLUDE_DIR=$TK_INCLUDE -D3RDPARTY_TK_LIBRARY_DIR=$TK_LIB"

FREETYPE_OPTIONS="-D3RDPARTY_FREETYPE_DIR=$FREETYPE_DIR -D3RDPARTY_FREETYPE_INCLUDE_DIR_freetype2=$FREETYPE_INCLUDE_2 -D3RDPARTY_FREETYPE_INCLUDE_DIR_ft2build=$FREETYPE_INCLUDE"

VTK_OPTIONS="-DUSE_VTK=ON -D3RDPARTY_VTK_DIR=$VTK_DIR -D3RDPARTY_VTK_INCLUDE_DIR=$VTK_INCLUDE -D3RDPARTY_VTK_LIBRARY_DIR=$VTK_LIB"

CMAKE_OPTIONS="-DBUILD_LIBRARY_TYPE=SHARED"

git clone $OCCT_URL

cd $OCCT_DIR

mkdir $OCCT_BUILD_DIR

cd $OCCT_BUILD_DIR

cmake .. $TCL_OPTIONS $TK_OPTIONS $FREETYPE_OPTIONS $VTK_OPTIONS $CMAKE_OPTIONS
