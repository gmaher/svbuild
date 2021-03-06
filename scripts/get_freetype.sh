sudo apt-get install libtool
sudo apt-get install libpng-dev

echo "Downloading FREETYPE $FREETYPE_CHECKOUT, building into $FREETYPE_DIR"

git clone $FREETYPE_URL

cd $FREETYPE_DIR

git checkout $FREETYPE_CHECKOUT

./autogen.sh
./configure --prefix=$EXTERNALS_DIR
make -j6
make install

cd $BUILD_DIR
