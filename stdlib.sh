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

sponge() {
  awk '
  BEGIN {x = ARGV[1]; ARGV[1] = "-"}
  {y = y ? y RS $0 : $0}
  END {print y > x}
  ' "$1"
}

xtrace() {
  awk 'BEGIN {d = "\47"; printf "\33[36m"; while (++q < ARGC) {
  x = split(ARGV[q], y, d); y[1]; for (z in y) printf "%s%s",
  !x || y[z] ~ /[^[:alnum:]%+,./:=@_-]/ ? d y[z] d : y[z], z < x ? "\\" d : ""
  printf q == ARGC - 1 ? "\33[m\n" : FS}}' "$@"
  "$@"
}
