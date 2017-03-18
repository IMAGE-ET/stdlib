#!/usr/local/bin/awklib -f
BEGIN {
  print "should be [two three four five six seven eight nine ten]"
  split("one two three four five six seven eight nine ten", z)
  slice(z, 2)
  print std_join(z, " ")
  print

  print "should be [one two three four]"
  split("one two three four five six seven eight nine ten", z)
  slice(z, 1, 5)
  print std_join(z, " ")
}
