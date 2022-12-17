#!/bin/sh
sudo sh aria2-static-builds/build-scripts/mingw-config/aria2-x86_64-w64-mingw-build-libs && sudo autoreconf -i -I /usr/share/aclocal/ && sudo sh aria2-static-builds/build-scripts/mingw-config/aria2-x86_64-w64-mingw-config && sudo make && mv src/aria2c.exe aria2c.exe && strip aria2c.exe
