#!/bin/bash

name='Srivas Chennu'
declare -A titles
titles[research]=Research
titles[selpub]='Selected Publications'
titles[funding]=Funding
titles[people]=People
titles[media]=Media
titles[collab]=Collaborations
titles[misc]=Miscellaneous
titles[betadoc]='BETADOC Study'
titles[mohawk]='MOHAWK Project'

cat nav.htm bio.htm news.htm footer.htm > interests
for p in "${!titles[@]}"
do
cat nav.htm $p.htm > $p.wc
bpage -t "$name: ${titles[$p]}" $p
done

bp
bipi
