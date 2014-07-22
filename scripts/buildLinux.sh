#!/bin/sh

set -e

rm -rf release/Linux/
mkdir -p release/Linux

echo "Let's start with the Commandline wallet device:"
cd src/

echo ""
echo "Making the device on 4 cores..."
make -f makefile.unix -j4 USE_UPNP=1

echo ""
echo "Releasing da shit."
cp ./pedacoind ../release/Linux/

cd ../
echo "Done with the Commandline device."

echo ""
echo "Here comes the QT Wallet!"
echo "Making Makefile..."
qmake -config release "RELEASE=1 USE_UPNP=1"

echo ""
echo "Compiling on 4 cores..."
make -j4

mv Pedacoin-qt release/Linux/

echo "Finished!"
