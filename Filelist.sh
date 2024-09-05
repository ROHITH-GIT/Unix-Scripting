#This script create a filelist of the csv file available in the path and move them to archieve.
# Filelist precommand in IICS.

#!bin/bash
for FILE in /root/*.csv
do
  echo "Copying files to Rohith Directory"
  cp $FILE /root/rohith/$(basename $FILE)
  echo "/root/rohith/$(basename $FILE)" >> filelist.txt
  echo " moving files to archive directory"
  mv $FILE /root/archive
done

