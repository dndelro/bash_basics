#!/bin/sh

gifts=("12 drummers drumming,"
       "11 pipers piping,"
       "10 lords a-leaping,"
       "9 ladies dancing,"
       "8 maids a-milking,"
       "7 swans a-swimming,"
       "6 geese a-laying,"
       "5 golden rings,"
       "4 calling birds,"
       "3 French hens,"
       "2 turtle doves, and"
       "A partridge in a pear tree.")

echo "Let's sing the 12 Days of Christmas!"

for day in $(seq 1 12); do
    echo "On the $day day of Christmas, my true love gave to me:"

    # loop from current day to day 1
    for (( i=day-1; i>=0; i-- )); do
        # special case for the last gift on the first day
        if [ $i -eq 11 ] && [ $day -eq 1 ]; then
            echo "${gifts[i]%.}" # removes the comma at the end
        else
            echo "${gifts[i]}"
        fi
    done

    echo ""  # add a newline for separation
done
