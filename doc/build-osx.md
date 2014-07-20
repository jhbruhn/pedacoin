#Build Instructions for OS X
This requires homebrew installed.
## Building the Daemon:
* `brew install --universal boost`
* `brew install openssl berkeley-db4 berkeley-db miniupnpc`
* `brew link openssl --force`
* `cd src`
* `make -f makefile.osx`
* be happy
##Building the QT Device:
* `brew install qt` and the other two steps from the Daemon Instructions.
* `qmake pedacoin-qt.pro`
* `make -f Makefile`
