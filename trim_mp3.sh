#!/bin/bash

# how to use this script
# put this script into the directory where all the to-be-trimed mp3 files are stored. Then just run "./run.sh" so that all the mp3 files will be trimmed off last 3 seconds.


# programming tips:
# cutmp3 -i test.mp3 -k -a 0:00 -b -0:03
# extension="${fullname##*.}"
# PATH_WITHOUT_EXT="${fullname%%.*}"
# basename=$(basename "$fullname") 

for fullname in $PWD/*.mp3; do

	cutmp3 -i $fullname -k -a 0:00 -b -0:03.50


        PATH_WITHOUT_EXT="${fullname%%.*}"
        MP3=".mp3"
        EXTRA_NUM="0001"
	BK="_bk"

	mv $fullname "$PATH_WITHOUT_EXT$BK$MP3"
	mv "$PATH_WITHOUT_EXT$EXTRA_NUM$MP3" $fullname

done	

