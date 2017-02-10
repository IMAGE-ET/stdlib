ceil() {
  stdlib awk - "$1" <<'eof'
BEGIN {
  print ceil(ARGV[1])
}
eof
}

floor() {
  stdlib awk - "$1" <<'eof'
BEGIN {
  print floor(ARGV[1])
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
  stdlib awk - "$@" <<'eof'
BEGIN {
  xtrace(ARGV)
}
eof
}
