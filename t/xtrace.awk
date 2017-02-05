#!/usr/local/bin/stdlib awk
BEGIN {
  _ = RS
  split("echo" _ "alfa" _ "bravo  charlie" _ _ "delta\47foxtrot", z, _)
  xtrace(z)
}
