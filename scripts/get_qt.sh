#1/bin/bash

echo "Downloading QT"

rm qt-opensource*
rm -rf Qt5.4.2

wget $QT_URL

chmod +x qt-opensource-linux-x64-5.4.2.run

echo "QT_DIR=$QT_DIR"
./qt-opensource-linux-x64-5.4.2.run
