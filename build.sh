#!/bin/bash

#Simvascular build script
#Note, in source build assumed for TCL/TK
#Rest of libraries are built in library_dir/build

sudo apt-get install python-dev

#1. get configuration variables
source variables_build.cfg

echo $FREETYPE_URL

#2. get tcl
#source ./scripts/get_tcl.sh

#3. get tk
#source ./scripts/get_tk.sh

#4. get freetype
#source ./scripts/get_freetype.sh

#5. get vtk
source ./scripts/get_vtk.sh


