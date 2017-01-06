#!/bin/dash

encodeURIComponent() {
  awk 'BEGIN {while (y++ < 125) z[sprintf("%c", y)] = y
  while (y = substr(ARGV[1], ++j, 1))
  q = y ~ /[[:alnum:]_.!~*\47()-]/ ? q y : q sprintf("%%%02X", z[y])
  print q}' "$1"
}

lts() {
  awk '{c = length; m[c] = m[c] ? m[c] RS $0 : $0}
  END {for (c in m) q[++x] = m[c]; while (x) print q[x--]}' "$1"
}
