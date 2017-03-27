#!/usr/local/bin/awklib -f
BEGIN {
  print "should be 2"
  print floor("2.9")
  print
  print "should be -3"
  print floor("-2.9")
}
