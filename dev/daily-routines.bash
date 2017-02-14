#!/bin/bash
DAILYMAIL_SOURCE=texts/dw.de-Langsam-gesprochene-Nachrichten-$(date --iso).text
if ! test -f ${DAILYMAIL} ; then
    echo ${DAILYMAIL} ist nicht da, bitte herunterladen
    exit 1
fi
DAILYMAIL=$(mktemp -t apertium-fin-deu-dailies.XXXXXXXXXX )
make
egrep -v '^#!' ${DAILYMAIL_SOURCE} > ${DAILYMAIL}
if ! apertium -d . deu-fin-debug < ${DAILYMAIL} |\
    fgrep --colour=always '@' ; then
    if ! apertium -d . deu-fin-debug < ${DAILYMAIL} |\
        fgrep --colour=always '#' ; then
        apertium -d . deu-fin < ${DAILYMAIL}
    else
        echo bidix miss candidates in apertium-fin:
        apertium -d . deu-fin-debug < ${DAILYMAIL} |\
            egrep -o '#[^<]*' |\
            tr -d '#<' |\
            sort |\
            uniq |\
            hfst-lookup -q fin-deu.automorf.hfst |\
            fgrep '<'
    fi
fi
rm -v ${DAILYMAIL}
