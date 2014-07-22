#!/bin/sh

set -e

echo "Making Makefile..."
qmake -config release

echo ""
echo "Compiling on 4 cores..."
make -j4

echo ""
echo "Bundling..."
macdeployqt PedaCoin.app -verbose=2

rm -rf release/Mac/

echo ""
echo "Zipping..."
mkdir -p release/Mac
zip -r release/Mac/PedaCoin-Mac.zip PedaCoin.app

mv PedaCoin.app release/Mac/

echo "Finished!"
