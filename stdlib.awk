#!/usr/bin/awk -f

function asrt(b,   x, y, z) {
  for (x in b) {
    y = b[x]
    z = x - 1
    while (z && b[z] > y) {
      b[z + 1] = b[z]
      z--
    }
    b[z + 1] = y
  }
}

function decodeURIComponent(encodedURI,   g, q, y, z) {
  while (g++ < 125) q[sprintf("%X", g)] = sprintf("%c", g)
  while (g = substr(encodedURI, ++y, 1))
    if (g == "%") {
      z = z q[toupper(substr(encodedURI, ++y, 2))]
      ++y
    }
    else z = z g
  return z
}

function quote(str,   d, m, x, y, z) {
  d = "\47"
  m = split(str, x, d)
  for (y in x)
    z = z d x[y] d (y < m ? "\\" d : "")
  return z
}

function wrap(text,   q, y, z) {
  while (text) {
    q = match(text, /( |$)/)
    y += q
    if (y > 80) {
      z = z RS
      y = q - 1
    }
    else if (z) z = z FS
    z = z substr(text, 1, q - 1)
    text = substr(text, q + 1)
  }
  return z
}
