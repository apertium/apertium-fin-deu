#!/bin/bash
# This script takes a Finnish wiktionary xml dump and converts it to
# apes-fin-deu
# Original from omrfi

# set SED=gnused if on mac
SED=sed
print_usage() {
    echo "Usage: $0 [fiwikt-pages-articles.xml]"
    echo
    echo "fiwikt-pages-articles.xml must point to unzipped fi.wiktionary dump."
    echo "If omitted, stdin is used"
}

if test $# -ge 2 ; then
    print_usage
    exit 1
fi

# Define word class
wc='(Substantiivi|Adjektiivi|Pronomini|Numeraali|Prepositio|Adverbi|Interjektio|Konjunktio|Partikkeli|Verbi|Erisnimi)'
# Fetch only relevant lines from the xml dump (NOTE: This assumes relevant
# lines are between <page> & </page> tags)
cat $@ | $SED -ne '/<page>/,/<\/page>/p' |\
# Remove all line-initial whitespaces
    $SED -e 's/^[ \t]*//g' |\
# Remove unwanted xml tags
    $SED -ne '/\(<page>\|<title>\)/p' -ne '/<text/,/<\/page>/p' |\
# Remove unwanted xml tag (NOTE: The </revision> tag is found between </text>
# & </page>)
    $SED '/<\/revision>/d' |\
# Remove linebreaks
    tr -d '\n' |\
# Place linebreak infront of each <page>
    $SED -re "s/<page>/\n\0/g" |\
# Retain only those lines which contain relevant content (in this case ==Suomi== which is the heading of Finnish words)
    fgrep "==Suomi==" |\
# Remove certain MediaWiki pages
    $SED -r "/<title>(Luokka:)|(Malline:)|(Wikisanakirja:)/d" |\
# Place tags and content on separate lines
    $SED -re "s/(<\/page>)/\n\1/g" \
    -e "s/(<title>)/\n\1/g" \
    -e "s/(<\/title>)/\1\n/g" \
    -e "s/(<text [^>]*>)/\1\n/g" \
    -e "s/(<\/text>)/\n\1/g" |\
# Place relevant content markup characters on seperate lines
    $SED -re "s/(==*[[:alpha:]]+==)/\n\1/g" \
    -e "s/((\(\{\{)|(\{\{fi))/\n\1/g" \
    -e "s/(#)/\n\1/g" \
    -e "s/(\*saksa:)/\n\1/g" |\
# Parse lines and tag word classes in headings (example: ===Substantiivi===)
    $SED -re "s/=$wc=/<wordclass>\1<\/wordclass>/g" |\
# Parse lines and tag with KOTUS numbering (this script only allows
# {{taivutustyyppi|99(alt: 99-A), {{fi-taivitus|99 & {{fi-subs-99 formats)
# {{fi-subs|14|A}}
    $SED -re "s/\{\{taivutustyyppi\|([[:alnum:]]+-?[[:alnum:]]?)\}\}/<kotus>\1<\/kotus>/" \
    -e "s/\{\{fi-taivutus\|([[:digit:]]+(\|?[[:upper:]])*)/<kotus>\1<\/kotus>/" \
    -e "s/\{\{fi-[[:alpha:]]*-([[:digit:]]+)\}\}/<kotus>\1<\/kotus>/" \
    -e "s/\{\{fi-[[:alpha:]]*\|([[:digit:]]+)\|([A-Z])\}\}/<kotus>\1-\2<\/kotus>/" \
    -e "s/\{\{fi-[[:alpha:]]*\|([[:digit:]]+)\}\}/<kotus>\1<\/kotus>/" |\
# Parse lines that begin with # but not #: and tag with definition
    $SED -re "s/^#([^#:].*)$/<definition>\1<\/definition>/g" |\
# Parse lines that begin with #: and tag with example
    $SED -re "s/^#:(.*)$/<example>\1<\/example>/g" |\
# Parse translation line for German
    $SED -re 's/^\*saksa: ([^*]*)/<deu>\1<\/deu>/' |\
# Place tags on separate lines
    $SED -re "s/(<(wordclass|kotus|definition|example|deu)>.*<\/(wordclass|kotus|definition|example|deu)>)/\n\1\n/g" |\
# Remove all  non-tagged lines
    $SED -rn "/^<.*>$/p" |\
# Remove definitions that are for conjugated words, i.e. retain only
# definitions of unconjugated words
    $SED -r "/(\{\{taivm)|(-taivm\|)|(\(taivutusmuoto)|(\(taivutusmuodot)|(taivutusmuoto'')|(\(taivus)/d" | egrep -v "\[\[Luokka:Suomen ([[:alpha:]]+) taivutusmuodot\]\]" |\
# remover text element ??
    $SED -re 's/<text bytes[^>]*>//' |\
# Parse remove wikimedia links, formatting and other tuff
    $SED -r "s/\[\[[[:alpha:]]+\|([[:alpha:]]+)\]\]/\1/g" |\
# Parse and remove other wikimedia markup "garbage"
    $SED -re "/\[\[[[:alpha:]]+:[[:alpha:]]+.*\]\]/d" |\
    $SED -re "s/\[|\]//g" -e "s/'|#|#://g" |\
    $SED -e "s/|loppu}}//g" -e 's/====Liittyvät sanat//' \
        -e 's/====Aiheesta muualla//' -e 's/====//' \
        -e 's/{{käännös|de|//g' -e 's/suku=\(.\)/{{\1}}/g' \
        -e 's/{{kohta|...*|//g' -e 's/}}}}/}}/g' \
        -e 's/|{{/ {{/g' -e 's/}}|/}} /g' |\
# Remove unescessary <text> & </text> tags
    $SED -re "/^<text |<\/text>/d" |\
# Rename remaining wiktionary xml tags: page to entry, title to lemma
    $SED -re "s/page>$/entry>/g" -e "s/title>/lemma>/g" |
# Remove linebreaks
    tr -d '\n' |\
# Place each <entry> on a separate line
    $SED -re "s/(<entry>)/\n\1/g" |\
# Remove some MWEs
    egrep '<lemma>[^ ]*<\/lemma>' |\
# Place entries in alphabetical order (due to uniform xml strucuture sort
# command works normally) and write as .xml file
    sort |\
# pick all classified for now
    fgrep '<kotus' |\
    fgrep -v 'lemma>-' |\
    sed -e 's/^<entry><lemma>//' -e "s:</lemma><wordclass>:\t:" \
        -e "s:</wordclass>.*<deu>:\t:" -e 's:</deu></entry>::' \
        -e 's:</deu><wordclass>.*::' |\
    awk -F $'\t' 'NF==3 {print;}' |\
    sed -e 's:{{f}}:<s n="f"/>:g' -e 's:{{m}}:<s n="m"/>:g' \
        -e 's:{{n}}:<s n="nt"/>:g' |\
    sed -e 's:Substantiivi:<s n="n"/>:' \
        -e 's:Verbi:<s n="vblex"/>:' \
        -e 's:Adjektiivi:<s n="adj"/>:' \
        -e 's:Numeraali:<s n="num"/>:' \
        -e 's:Erisnimi:<s n="vblex"/>:' |\
    awk -F $'\t' \
    '{tcount = split($3, trans, /, */);
        for(i=1; i<=tcount; i++) {
            printf("    <e><p><l>%s%s</l></r>%s%s</r></p></e>\n", $1, $2, trans[i], $2);
        }
    }' |\
    sed -e 's: <s n="f"/><s n="n"/>:<s n="n"/><s n="f"/>:' \
        -e 's: <s n="m"/><s n="n"/>:<s n="n"/><s n="m"/>:' \
        -e 's: <s n="nt"/><s n="n"/>:<s n="n"/><s n="nt"/>:' \
        -e 's: <s:<s:'
