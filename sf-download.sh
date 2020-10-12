#!/bin/bash
# Download Directories from sourceforge.net recursively
# Script takes the RSS-Feed URL as only argument and downloads all the files
curl $1 | grep "<link>.*</link>" | sed 's|<link>||;s|</link>||' | while read url; do url=`echo $url | sed 's|/download$||'`; echo $url; wget $url; done
# while read url; do url=`echo $url | sed 's|/download$||'`; echo $url; wget $url; done
