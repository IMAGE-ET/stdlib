ceil() {
  awklib '
  BEGIN {
    print ceil(ARGV[1])
  }
  ' "$1"
}

len_asc() {
  awk '
  {
    c = length
    m[c] = m[c] ? m[c] RS $0 : $0
  }
  END {
    for (c in m) {
      print m[c]
    }
  }
  ' "$1"
}

len_desc() {
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

scope() {
  eval "$(set)" command eval '\"\$@\"'
}

std_size() {
  ls -ARn "$@" | awk '{z += $5} END {print z}'
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

smartmatch() {
  grep -Fxq "$@"
}

xtrace() {
  awklib '
  BEGIN {
    delete ARGV[0]
    xtrace(ARGV)
  }
  ' "$@"
}
