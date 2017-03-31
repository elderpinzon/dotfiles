#############################################################
## Handy script to treat folders from RARBG
#############################################################
#! /usr/bin/python

import os
import sys

name = sys.argv[1]

clean_name = name.split('.')
cleaner_name = []

for word in clean_name:

    ## Remove everything after resolution string
    if word == "1080p" or word == "720p":
        break
    cleaner_name.append(word)

## Join with dots in between
cleaner_name = ".".join(cleaner_name)

## Rename folder
command = "mv %s %s" % (name,cleaner_name)
print command
os.system(command)

## Now remove crap inside folder
command = "rm -r %s/RARBG.*" % cleaner_name
print command
os.system(command)

## Finally move folder to Movies folder
command = "mv %s /media/Toshiba/Movies/" % cleaner_name
print command
os.system(command)
