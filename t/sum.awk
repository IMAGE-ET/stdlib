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
  print
  split("1 2 3 4 5 6 7 8 9 10 11 12", x)
  print "should be 66"
  print sum(x, "", "0xB")
  print
  print "should be 33"
  print sum(x, "0xA")
  print
  print "should be 21"
  print sum(x, "0xA", "0xB")
}
