#!/usr/local/bin/awklib -f
BEGIN {
  split("11,222,333,444", x, ",")
  print "should be 11222333444"
  print std_join(x)
  print
  print "should be 11:222:333:444"
  print std_join(x, ":")
  print
  print "should be 11222333"
  print std_join(x, "", "", 3)
  print
  print "should be 222333444"
  print std_join(x, "", 2)
  print
  print "should be 11:222:333"
  print std_join(x, ":", "", 3)
  print
  print "should be 222:333:444"
  print std_join(x, ":", 2)
  print
  print "should be 222333"
  print std_join(x, "", 2, 3)
  print
  print "should be 222:333"
  print std_join(x, ":", 2, 3)
  print
  split("1 2 3 4 5 6 7 8 9 A B C", x)
  print "should be A:B:C"
  print std_join(x, ":", "0xA")
  print
  print "should be A:B"
  print std_join(x, ":", "0xA", "0xB")
}
