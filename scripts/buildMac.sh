#!/bin/sh

set -e

rm -rf release/Mac/
mkdir -p release/Mac

echo "Let's start with the Commandline wallet device:"
cd src/

echo ""
echo "Making the device on 4 cores..."
make -f makefile.osx -j4 USE_UPNP=1

echo ""
echo "Releasing da shit."
cp ./pedacoin ../release/Mac/

cd ../
echo "Done with the Commandline device."

echo ""
echo "Here comes the QT Wallet!"
echo "Making Makefile..."
qmake -config release "RELEASE=1 USE_UPNP=1"

echo ""
echo "Compiling on 4 cores..."
make -j4

echo ""
echo "Bundling..."
macdeployqt PedaCoin.app -verbose=2


echo ""
echo "Zipping..."
zip -r release/Mac/PedaCoin-Mac.zip PedaCoin.app

mv PedaCoin.app release/Mac/

echo "Finished!"
