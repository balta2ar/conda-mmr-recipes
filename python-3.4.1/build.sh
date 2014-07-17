#!/bin/bash

set -e

./configure --prefix=$PREFIX --enable-shared --enable-ipv6 --enable-unicode=ucs4 \
    CPPFLAGS=-I$PREFIX/include LDFLAGS="-L$PREFIX/lib -Wl,-rpath=$PREFIX/lib" \
    && make -j$(getconf _NPROCESSORS_ONLN) \
    && make install \
    && ln -s python3 $PREFIX/bin/python
