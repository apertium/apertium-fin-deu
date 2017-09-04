#!/bin/bash

BIDIX=apertium-fin-deu.fin-deu.dix
MONODIX=$HOME/sf.net/apertium/languages/apertium-deu/apertium-deu.deu.dix

fgrep anyg < $BIDIX | egrep '<r>[[:upper:]]' |\
    sed -e 's/^.*<r>//' -e 's/<s .*$//' > anyg-deu.wordlist

echo > apertium-fin-deu.genders.sed.unsort
while read w ; do
    fgrep "lm=\"$w\"" $MONODIX | fgrep -v lower |\
        egrep -v '__(np|adv|vb|pr|adj|pprep)' |\
        sed -e 's/^.*par n=[^_]*__n_//' -e 's/"\/.*$//' |\
        sed -e "s@^.*\$@s:<r>$w<\\\\(.*\\\\)</r></p><par n=\"anyg\"/>:<r>$w<\\\\1<s n=\"\\0\"/></r></p>:@" \
        >> apertium-fin-deu.genders.sed.unsort
    if test $(fgrep "lm=\"$w\"" $MONODIX | fgrep -v lower |\
            egrep -v '__(np|adv|vb|pr|adj|pprep)' | wc -l) -gt 1 ; then
        echo Achtung: $w has many genders
    fi
done < anyg-deu.wordlist
sort apertium-fin-deu.genders.sed.unsort | uniq > apertium-fin-deu.genders.sed

# lower hacks too
fgrep anyg < $BIDIX | egrep '<r>[[:lower:]]' |\
    sed -e 's/^.*<r>//' -e 's/<s .*$//' > anyg-deu-lower.wordlist

echo > apertium-fin-deu.genders-lower.sed.unsort
while read w ; do
    fgrep -i "lm=\"$w\"" $MONODIX | fgrep -v lower |\
        egrep -v '__(np|adv|vb|pr|adj|pprep)' |\
        sed -e 's/^.*par n=[^_]*__n_//' -e 's/"\/.*$//' |\
        sed -e "s@^.*\$@s:<r>$w<\\\\(.*\\\\)</r></p><par n=\"anyg\"/>:<r>$w<\\\\1<s n=\"\\0\"/></r></p>:@" \
        >> apertium-fin-deu.genders-lower.sed.unsort
    if test $(fgrep "lm=\"$w\"" $MONODIX | fgrep -v lower |\
            egrep -v '__(np|adv|vb|pr|adj|pprep)' | wc -l) -gt 1 ; then
        echo Achtung: $w has many genders
    fi
done < anyg-deu-lower.wordlist
sort apertium-fin-deu.genders-lower.sed.unsort | uniq > apertium-fin-deu.genders-lower.sed

