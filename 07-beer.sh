#!/bin/sh

echo "Let's sing the 12 Days of Christmas!"

for day in $(seq 1 12); do
    echo "On the $day day of Christmas, my true love gave to me:"

    case $day in
        12) echo "12 drummers drumming,";;
        11) echo "11 pipers piping,";;
        10) echo "10 lords a-leaping,";;
        9) echo "9 ladies dancing,";;
        8) echo "8 maids a-milking,";;
        7) echo "7 swans a-swimming,";;
        6) echo "6 geese a-laying,";;
        5) echo "5 golden rings,";;
        4) echo "4 calling birds,";;
        3) echo "3 French hens,";;
        2) echo "2 turtle doves, and";;
        1) 
            if [ $day -eq 1 ]; then
                echo "A partridge in a pear tree."
            else
                echo "A partridge in a pear tree,"
            fi
            ;;
    esac

    # loop back to print the gifts from previous days
    for prev_day in $(seq $((day-1)) -1 1); do
        case $prev_day in
            12) echo "12 drummers drumming,";;
            11) echo "11 pipers piping,";;
            10) echo "10 lords a-leaping,";;
            9) echo "9 ladies dancing,";;
            8) echo "8 maids a-milking,";;
            7) echo "7 swans a-swimming,";;
            6) echo "6 geese a-laying,";;
            5) echo "5 golden rings,";;
            4) echo "4 calling birds,";;
            3) echo "3 French hens,";;
            2) echo "2 turtle doves, and";;
            1) echo "A partridge in a pear tree.";;
        esac
    done

    echo ""  # add a newline for separation

done
