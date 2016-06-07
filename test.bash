#!/bin/bash

tmp=/tmp/$$

ERROR_EXIT () {
echo "$1" >$2
rm -f $tmp-*
exit 1
}

#######
#test1#
#######

echo aaa bbb NG > $temp-ans
./test.py aaa bbb > $tmp-out || ERROR_EXIT "TEST1-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST1-2"

echo OK
rm -f $tmp-*
exit 0