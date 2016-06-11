#!/bin/bash

tmp=/tmp/$$

ERROR_EXIT () {
echo "$1" >&2
rm -f $tmp-*
exit 1
}

#######
#test1#
#######

echo 6 > $temp-ans
./16745107 12 18 > $tmp-out || ERROR_EXIT "TEST1-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST1-2"

echo OK
rm -f $tmp-*
exit 0
