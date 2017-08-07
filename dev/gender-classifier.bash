#!/bin/bash

BIDIX=apertium-fin-deu.fin-deu.dix
MONODIX=$HOME/sf.net/apertium/languages/apertium-deu/apertium-deu.deu.dix

fgrep anyg < $BIDIX |\
    sed -e 's/^.*<r>//' -e 's/<s .*$//' > anyg-deu.wordlist

while read w ; do
    fgrep "lm=\"$w\"" $MONODIX | fgrep -v lower | egrep -v '__(np|adv|vb|pr)' |\
        sed -e 's/^.*par n=[^_]*__n_//' -e 's/"\/.*$//' |\
        sed -e "s@^.*\$@s:<r>$w\\(.*\\)</r></p><par n=\"anyg\"/>:<r>$w\\\\1<s n=\"\\0\"</r></p>:@" \
        >> apertium-fin-deu.genders.sed.unsort
done < anyg-deu.wordlist
sort apertium-fin-deu.genders.sed.unsort > apertium-fin-deu.genders.sed
