#!/bin/bash
#curl https://appinventiv.com/blog/ios-evolution-timeline/> site1_html
for LINE in $( less site1_html )
do
   if [[ "$LINE" == *"png"* ]]; then
   echo "<img src="${LINE:5:-1}" alt width="70" height="70"/>">>part2
   fi 
done

#curl https://1000logos.net/ios-logo/> site2_html
for LINE in $( less site2_html )
do
   if [[ "$LINE" == *"jpg"* ]]; then
   echo "<img src="${LINE:5:-1}" alt width="70" height="70"/>">>part2
   fi 
done 
source var/www/html/finalsite.sh
