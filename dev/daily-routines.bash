#!/bin/bash
DAILYMAIL=texts/dw.de-Langsam-gesprochene-Nachrichten-$(date --iso).text
if ! test -f ${DAILYMAIL} ; then
    echo ${DAILYMAIL} ist nicht da, bitte herunterladen
    exit 1
fi
make
if ! apertium -d . deu-fin-debug < ${DAILYMAIL} |\
    fgrep --colour=always '@' ; then
    if ! apertium -d . deu-fin-debug < ${DAILYMAIL} |\
        fgrep --colour=always '#' ; then
        apertium -d . deu-fin < ${DAILYMAIL}
    fi
fi
