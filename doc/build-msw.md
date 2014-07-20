# Compiling on Windows:
You will need:
* The deps (doc/win_deps.zip) extracted at C:/deps
* MingW 20120426 (get it from [here](https://diyps3controller.googlecode.com/files/mingw-get-inst-20120426.exe), install using the files coming with it)
* QT (get it from [here](http://qt-mirror.dannhauer.de/official_releases/qt/4.8/4.8.6/qt-opensource-windows-x86-mingw482-4.8.6-1.exe))
## Compiling:
* Clone the PedaCoin source to C:/pedacoin. 
* Start the QT CommandLine and cd to C:/pedacoin
* Compiling the QT Client:
  * qmake "USE_UPNP=1"
  * make -f Makefile.Release
  * Copy the DLLs from the doc/win_addins to the release folder
  * Be happy
* Compiling the CommandLine Client:
  * cd src/
  * make -f Makefile.mingw
  * copy `libgcc_s_dw2-1.dll` and `libstdc++-6.dll` from docs/win_addins to src
  * use ./pedacoin
