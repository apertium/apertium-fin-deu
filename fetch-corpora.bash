#!/bin/bash

function opus_unzip() {
    unzip -v "$1"
    rm -v README LICENSE "$1"
}

mkdir -p corpora
pushd corpora || exit 1
wget https://opus.nlpl.eu/download.php?f=MultiParaCrawl/v9/moses/de-fi.txt.zip \
    -O mpc-v9-de-fi.zip
opus_unzip mpc-v9-de-fi.zip
wget https://object.pouta.csc.fi/OPUS-Europarl/v8/moses/de-fi.txt.zip \
    -O europarl-v8-de-fi.zip
opus_unzip europarl-v8-de-fi.zip
popd || exit 1
