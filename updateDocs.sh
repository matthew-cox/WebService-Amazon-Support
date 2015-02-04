#!/bin/bash -x
rm -f MYMETA.* META.* README*
perl Makefile.PL
perldoc -t ./lib/WebService/Amazon/Support.pm > README
pod2markdown ./lib/WebService/Amazon/Support.pm > README.md

