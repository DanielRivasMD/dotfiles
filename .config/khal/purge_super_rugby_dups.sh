#!/bin/bash

# set variables
calDir="/Users/drivas/.config/khal/calendars/"


# collect data
cd ${calDir}SuperRugby
for i in $(ls);
do
  awk '/SUMMARY/ {print $0 "," FILENAME}' ${i} >> ${calDir}SRfixtures.dat
done

# purge duplicates
rm -v $( awk -F, 'arr[$1]++{print $2}' ${calDir}SRfixtures.dat )

# clean up
rm -v ${calDir}SRfixtures.dat
cd - > /dev/null
