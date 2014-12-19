#!/bin/bash

sh ./configure --prefix=$PREFIX \
    --with-shared --enable-overwrite --disable-termcap \
    --without-debug --without-ada --without-manpages \
    --with-terminfo-dirs=/etc/terminfo:/lib/terminfo:/usr/share/terminfo:$PREFIX/share/terminfo \
    --with-default-terminfo-dir=/usr/share/terminfo \
    --with-termlib=tinfo --enable-widec

make -j$(getconf _NPROCESSORS_ONLN)
make install
