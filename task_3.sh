#!/bin/bash

# Args
# $1 - csv file to parse

cat $1 | perl -MData::Dumper -MDDP -lnaF':' -e 'my @Q = (@F); push (@R, \@Q); } { print(Dumper(@R)."\n\n"); p @R'
