#!/bin/bash

# Args:
# $1 - path for ls command

# We eliminate unnecessary ls output by extra options

ls -l -gGL $1 | perl -lnaF'\s+' -e 'if ($F[2] > 0x100000) { print $F[6]; ++$match } ++$total } { ++$match; --$match; print "Match: ".$match."; Total: ".$total."."'

# We need --$match; ++$match in the case of zero matching files to receive correct output.
# We can also use ls -ogL instead of ls -l -gGL (with the same result)
