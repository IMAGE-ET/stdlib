#!/usr/bin/awk -f
BEGIN {
  x = ARGV[1]
  ARGV[1] = "-"
}
{
  y = y ? y RS $0 : $0
}
END {
  print y > x
}
