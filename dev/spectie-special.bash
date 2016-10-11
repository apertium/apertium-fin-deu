#!/bin/bash
total=$(cat dewiki.asfdebug | tr ' ' '\n' | wc -l)
hashes=$(cat dewiki.asfdebug | grep -c '#')
unkn=$(cat dewiki.asfdebug | grep -c '*')
ats=$(cat dewiki.asfdebug | grep -c '@')
#slas=$(cat dewiki.asfdebug | grep -o '[^ ]\+\(\/[^ ]\+\)\+' | grep -v -e ':\/\/' -e 'http' -e '\*' | wc -l)
perc1=$(echo "scale=4; $hashes / $total * 100" | bc)
perc2=$(echo "scale=4; $unkn / $total * 100" | bc)
#perc3=$(echo "scale=4; $slas / $total * 100" | bc)
perc4=$(echo "scale=4; $ats / $total * 100" | bc)
cov=$(echo "100 - $perc2 - $perc4" | bc)
date --iso
echo -e "f(#):\t"$hashes"/"$total"\t"$perc1
echo -e "f(*):\t"$unkn"/"$total"\t"$perc2
# echo -e "f(/):\t"$slas"/"$total"\t"$perc3
echo -e "f(@):\t"$ats"/"$total"\t"$perc4
echo -e "Cov:\t\t\t"$cov;
