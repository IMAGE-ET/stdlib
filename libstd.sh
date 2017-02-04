encodeURIComponent() {
  awk -f/usr/share/awk/libstd.awk -f- "$1" <<'eof'
BEGIN {
  print encodeURIComponent(ARGV[1])
}
eof
}

lts() {
  awk '
  {
    c = length
    m[c] = m[c] ? m[c] RS $0 : $0
  }
  END {
    for (c in m)
      q[++x] = m[c]
    while (x) {
      print q[x--]
    }
  }
  ' "$1"
}

slurp() {
  awk '
  BEGIN {
    RS = ""
    getline < "-"
    print > ARGV[1]
  }
  ' "$1"
}

xtrace() {
  awk '
  BEGIN {
    d = "\47"
    printf "\33[36m"
    while (++q < ARGC) {
      x = split(ARGV[q], y, d)
      y[1]
      for (z in y) {
        printf "%s%s", !x || y[z] ~ "[^[:alnum:]%+,./:=@_-]" ? d y[z] d : y[z],
        z < x ? "\\" d : ""
      }
      printf q == ARGC - 1 ? "\33[m\n" : FS
    }
  }
  ' "$@"
  "$@"
}
