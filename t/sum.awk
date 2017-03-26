#!/usr/local/bin/awklib -f
BEGIN {
  split("10 20 30 40", x)
  print "should be 100"
  print sum(x)
  print
  print "should be 60"
  print sum(x, "", 3)
  print
  print "should be 90"
  print sum(x, 2)
  print
  print "should be 50"
  print sum(x, 2, 3)
  print sum(x, 2, "3")
  print sum(x, "2", 3)
  print sum(x, "2", "3")
}
