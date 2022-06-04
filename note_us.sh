#!/bin/sh

name=$1

f_md=$name.md
f_pdf=$name.pdf

pandoc -s -i \
    --lua-filter=center.lua \
    --pdf-engine=xelatex \
    -V geometry:"top=1.0cm, bottom=1.0cm, left=1.0cm, right=1.0cm" \
    -V colorlinks \
    --highlight-style zenburn \
    -V urlcolor=NavyBlue \
    -o $f_pdf $f_md +RTS -Ksize -RTS
