#!/bin/bash

# Args
# $1 - csv file to parse

cat $1 | perl -lnaF':' -e 'foreach(0..$#F) { if ($F[$_] > 10) { print "Row: ".$.."; Col: ".($_ + 1)."." } }'
