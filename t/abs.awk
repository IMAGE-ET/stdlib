#!/usr/local/bin/awklib -f
BEGIN {
  print "should be 1"
  print abs("-1")
}
