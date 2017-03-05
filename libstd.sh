ceil() {
  awklib '
  BEGIN {
    print ceil(ARGV[1])
  }
  ' "$1"
}

floor() {
  awklib '
  BEGIN {
    print floor(ARGV[1])
  }
  ' "$1"
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

stl() {
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

scope() {
  eval "$(set)" command eval '\"\$@\"'
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
  awklib '
  BEGIN {
    xtrace(ARGV)
  }
  ' "$@"
}
