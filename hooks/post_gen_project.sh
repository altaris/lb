#!/bin/sh

NAME="kappak-beamer.sty"
URL="https://raw.githubusercontent.com/altaris/kappak/master/out/texmf/tex/latex/kappak/$NAME"

echo "Copying '$NAME' from '$URL'"
curl "$URL" -o "src/$NAME"
