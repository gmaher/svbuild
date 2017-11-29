#!/bin/bash

#Simvascular build script
#Note, in source build assumed for TCL/TK
#Rest of libraries are built in library_dir/build

sudo apt-get install python-dev
sudo apt-get install autoconf

#1. get configuration variables
source variables_build.cfg

mkdir $EXTERNALS_DIR
echo "EXTERNALS_DIR=$EXTERNALS_DIR"

#qt
#source ./scripts/get_qt.sh

#2. get tcl
#source ./scripts/get_tcl.sh

#3. get tk
#source ./scripts/get_tk.sh

#4. get freetype
#source ./scripts/get_freetype.sh

#5. get vtk
#source ./scripts/get_vtk.sh
#
# #6. get GDCM
#source ./scripts/get_gdcm.sh
#
# #7. get ITK
#source ./scripts/get_itk.sh

#8. get Open Cascade
#source ./scripts/get_opencascade.sh

#9 get mmg
#source ./scripts/get_mmg.sh

#10 MITK
source ./scripts/get_mitk.sh
