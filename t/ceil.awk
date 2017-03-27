#!/usr/local/bin/awklib -f
BEGIN {
  print "should be 3"
  print ceil("2.1")
  print
  print "should be -2"
  print ceil("-2.1")
}
