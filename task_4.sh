#!/bin/bash

# Args
# $1 - csv file to parse

# Lines are splitted for the convenience of debugging

cat $1 | perl -d -MData::Dumper -MDDP -lnaF':' -e 'my @Q = (@F);
 push (@R, \@Q); }
{ print(Dumper(@R)."\n\n"); p @R'

# Use "source ./debug_script" in the debugger shell to run a debug scenario
