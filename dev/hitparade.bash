#!/bin/bash
SPLITLINES=1000000
cat dewiki.text | split -n $SPLITLINES
mv dewiki.asfdebug{,~}
for f in x* ; do 
    apertium -d .. deu-fin-debug < $f >> dewiki.asfdebug;
done
egrep -o '@[^<]*[^ ]*>' dewiki.asfdebug | sort | uniq -c | sort -nr > dewiki.hits 
