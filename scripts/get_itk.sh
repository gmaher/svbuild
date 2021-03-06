#!/bin/bash

echo "Downloading ITK ${ITK_CHECKOUT} and building into ${ITK_BUILD_DIR}"


ITK_OPTIONS="-DBUILD_SHARED_LIBS=ON\
 -DITK_LEGACY_SILENT=ON\
  -DITK_WRAP_PYTHON=OFF\
   -DModule_ITKVtkGlue=ON\
    -DVTK_DIR=$VTK_CMAKE_DIR\
     -DITK_USE_SYSTEM_GDCM=ON\
      -DGDCM_DIR=$LIB_DIR\
       -DBUILD_TESTING=OFF\
        -DCMAKE_INSTALL_PREFIX=$EXTERNALS_DIR"

git clone $ITK_URL

cd $ITK_DIR

git checkout $ITK_CHECKOUT

mkdir $ITK_BUILD_DIR

cd $ITK_BUILD_DIR

cmake .. $ITK_OPTIONS

make -j6

make install

cd $BUILD_DIR
