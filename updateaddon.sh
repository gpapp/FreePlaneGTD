#!/bin/bash
#
# Script to insert the current script into the addon file
#
# Works on Linux, requires xmlstarlet to run
#
VERSION=`sed -n '/^version/ ! d; /^version/ {s/version=//; p}' .properties`

# update groovy and preferences
xmlstarlet  ed -P -L -O \
 -u "/map/node/node[@TEXT='scripts']/node[@TEXT='freeplaneGTD.groovy']/node/@TEXT" -v "$(cat src/freeplaneGTD.groovy)" \
 -u "/map/node/node[@TEXT='preferences.xml']/node/@TEXT" -v "$(cat src/preferences.xml)" \
 -u "/map/node/attribute[@NAME='version']/@VALUE" -v "$VERSION" \
 freeplaneGTD-${VERSION}.addon.mm

#Update from changelog text, some problem remains with word boundaries, that were replaced with _ for a while
$(awk ' BEGIN {
  print "xmlstarlet ed -P -L -O "
  line=0
}
{
  time=0;
  id=0;
  if (/[ \t]+$/) { next; }
  if (!/^ /) {
    print "-d /map/node/node[@TEXT='\''changes'\'']/node[@TEXT='\''" $1 "'\'']";
    print "-s /map/node/node[@TEXT='\''changes'\''] -t elem -n tmpNode ";
    print "-i /map//tmpNode -t attr -n TEXT -v " $1;
    print "-i /map//tmpNode -t attr -n CREATED -v " time;
    print "-i /map//tmpNode -t attr -n MODIFIED -v " time;
    print "-r /map//tmpNode -v node ";
    a=$1
  } else {
    b=gensub(/^[ \t]+/,"","g", $0);
    b=gensub(/[ \t]/, "_", "g", b);
    print " -s /map/node/node[@TEXT='\''changes'\'']/node[@TEXT='\''" a "'\''] -t elem -n tmpNode ";
    print " -i /map//tmpNode -t attr -n TEXT -v line" line ;
    print " -i /map//tmpNode -t attr -n CREATED -v " time;
    print " -i /map//tmpNode -t attr -n MODIFIED -v " time;
    print " -r /map//tmpNode -v node ";
  }
  line++;
}' changelog.txt) freeplaneGTD-${VERSION}.addon.mm

LINEN=0
while read LINE
do
    xmlstarlet ed -P -L -O \
        -u "/map/node/node[@TEXT='changes']/node/node[@TEXT='line$LINEN']/@TEXT" -v "$LINE" \
        freeplaneGTD-${VERSION}.addon.mm
    let "LINEN++"
done <changelog.txt
