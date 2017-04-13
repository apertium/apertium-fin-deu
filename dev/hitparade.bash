#!/bin/bash
SPLITLINES=1000000

DE=dewiki.text
FI=fiwiki.text
for f in $DE ; do
    if ! test -f $f ; then
        echo missing $f, skipping...
        continue
    fi
    if ! test -f de.$f.parts.aa ; then
        echo splitting $f into $SPLITLINES lines per file
        split -l $SPLITLINES $f de.$f.parts.
    fi
    mv -v de.$f.asfdebug{,~}
    for g in de.$f.parts.* ; do
        echo $g...
        apertium -d .. deu-fin-debug < $g >> de.$f.asfdebug;
    done
done
cat de.*.asfdebug |\
    egrep -o '@[^<]*[^ ]*>' | sort | uniq -c | sort -nr > de.hits
for f in $FI ; do
    if ! test -f $f ; then
        echo missing $f , skipping...
        continue
    fi
    if ! test -f "fi.$f.parts.aa" ; then
        echo splitting $f into $SPLITLINES linse per file
        split -l $SPLITLINES $f "fi.$f.parts."
    fi
    mv -v "fi".$f.asfdebug{,~}
    for g in "fi".$f.parts.* ; do
        echo $g...
        apertium -d .. fin-deu-debug < $g >> "fi".$f.asfdebug;
    done
done
cat "fi".*.asfdebug |\
    egrep -o '@[^<]*[^ ]*>' | sort | uniq -c | sort -nr > "fi.hits"
wc -l ??.hits
head -n 10 ??.hits
