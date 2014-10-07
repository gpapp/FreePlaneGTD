#!/bin/sh
#
# Script to insert the current script into the addon file
#
# Works on Linux, requires xmlstarlet to run
#
VERSION=v0.9

xmlstarlet  ed -P -L -O -u "/map//node[@TEXT='scripts']/node[@TEXT='freeplaneGTD.groovy']/node/@TEXT" \
 -v "$(cat freeplaneGTD.groovy)" freeplaneGTD-${VERSION}.addon.mm
