#!/bin/sh

name=$1

f_md=$name.md
f_pdf=$name.pdf

pandoc -s -i \
    --lua-filter=center.lua \
    --pdf-engine=xelatex \
    -V geometry:"top=1.5cm, bottom=1.5cm, left=1.5cm, right=1.5cm" \
    -V colorlinks \
    --highlight-style zenburn \
    -V urlcolor=NavyBlue \
    -o $f_pdf $f_md +RTS -Ksize -RTS
