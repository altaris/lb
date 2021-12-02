#!/bin/bash

function _copy () {
    echo "Copying '$2' from '$1/$2'"
    curl -Ls "$1/$2" -o "src/$2" > /dev/null
}

KAPPAK_URL="https://raw.githubusercontent.com/altaris/kappak/master/out/texmf/tex/latex/kappak/"
KAPPAK_FILE="kappak-beamer.sty"
_copy "$KAPPAK_URL" "$KAPPAK_FILE"

MTHEME_URL="https://raw.githubusercontent.com/matze/mtheme/master/source/"
MTHEME_FILES=(
    "beamercolorthememetropolis-highcontrast.dtx"
    "beamercolorthememetropolis.dtx"
    "beamerfontthememetropolis.dtx"
    "beamerinnerthememetropolis.dtx"
    "beamerouterthememetropolis.dtx"
    "beamerthememetropolis.dtx"
    "beamerthememetropolis.ins"
    "pgfplotsthemetol.dtx"
)
for FILE in "${MTHEME_FILES[@]}"; do
    _copy "$MTHEME_URL" "$FILE"
done