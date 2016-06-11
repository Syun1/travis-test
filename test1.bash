#! /bin/bash

var_ans=6
var_out=$(./16745107 12 18)

test $var_out -eq $var_out ; echo $?
