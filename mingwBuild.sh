#!/bin/sh
sudo apt update && sudo apt install -y make binutils autoconf automake autotools-dev libtool patch ca-certificates pkg-config git curl dpkg-dev gcc-mingw-w64 g++-mingw-w64 gcc-mingw-w64-x86-64 g++-mingw-w64-x86-64 gcc-mingw-w64-i686 g++-mingw-w64-i686 autopoint libcppunit-dev libxml2-dev libgcrypt20-dev lzip && sudo apt autoremove -y

sudo sh aria2-static-builds/build-scripts/mingw-config/aria2-x86_64-w64-mingw-build-libs && sudo autoreconf -i -I /usr/share/aclocal/ && sudo sh aria2-static-builds/build-scripts/mingw-config/aria2-x86_64-w64-mingw-config && sudo make && mv src/aria2c.exe build/aria2c_orig_x64.exe && cp aria2c_orig_x64.exe aria2c_x86.exe && strip aria2c_x64.exe

sudo sh aria2-static-builds/build-scripts/mingw-config/aria2-i686-w64-mingw-build-libs && sudo autoreconf -i -I /usr/share/aclocal/ && sudo sh aria2-static-builds/build-scripts/mingw-config/aria2-i686-w64-mingw-config && sudo make && mv src/aria2c.exe build/aria2c_orig_x86.exe && cp aria2c_orig_x86.exe aria2c_x86.exe && strip aria2c_x86.exe
