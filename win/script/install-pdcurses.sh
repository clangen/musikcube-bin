#!/bin/bash

FROM="PDCurses/"
TO_H="musikcube/src/3rdparty/win32_include/"
TO_C="musikcube/src/3rdparty/win32_src/pdcurses/"

cp ${FROM}/*.h ${TO_H}
cp ${FROM}/common/*.h ${TO_C}
cp ${FROM}/common/*.c ${TO_C}
cp ${FROM}/pdcurses/*.c ${TO_C}
cp ${FROM}/wincon/*.h ${TO_C}/wincon
cp ${FROM}/wincon/*.c ${TO_C}/wincon
cp ${FROM}/wingui/*.h ${TO_C}/wingui
cp ${FROM}/wingui/*.c ${TO_C}/wingui

sed -i 's/\.\.\/common\///' ${TO_C}/wincon/*
sed -i 's/\.\.\/common\///' ${TO_C}/wingui/*