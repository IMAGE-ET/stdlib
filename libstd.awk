function array_join(arr, separator,   q, x) {
  for (q in arr)
    x = x ? x separator arr[q] : arr[q]
  return x
}

function ceil(x,   y) {
  y = int(x)
  return y < x ? y + 1 : y
}

function insertion_sort(arr,   x, y, z) {
  for (x in arr) {
    y = arr[x]
    z = x - 1
    while (z && arr[z] > y) {
      arr[z + 1] = arr[z]
      z--
    }
    arr[z + 1] = y
  }
}

function decodeURIComponent(encodedURI,   g, q, y, z) {
  while (g++ < 125)
    q[sprintf("%X", g)] = sprintf("%c", g)
  while (g = substr(encodedURI, ++y, 1))
    if (g == "%") {
      z = z q[toupper(substr(encodedURI, ++y, 2))]
      ++y
    }
    else {
      z = z g
    }
  return z
}

function encodeURIComponent(str,   g, q, y, z) {
  while (g++ < 125)
    q[sprintf("%c", g)] = g
  while (g = substr(str, ++y, 1))
    z = z (g ~ /[[:alnum:]_.!~*\47()-]/ ? g : sprintf("%%%02X", q[g]))
  return z
}

function exists(file) {
  return getline < file < 0 ? 0 : 1
}

function quote(str,   d, m, x, y, z) {
  d = "\47"
  m = split(str, x, d)
  for (y in x)
    z = z d x[y] (y < m ? d "\\" d : d)
  return z
}

function wrap(text,   q, y, z) {
  while (text) {
    q = match(text, / |$/)
    y += q
    if (y > 80) {
      z = z RS
      y = q - 1
    }
    else if (z)
      z = z FS
    z = z substr(text, 1, q - 1)
    text = substr(text, q + 1)
  }
  return z
}

function xtrace(arr,   b, d, k, q, w, z) {
  b = "\47"
  while (++d in arr) {
    k = split(arr[d], q, b)
    q[1]
    for (w in q) {
      z = z (!k || q[w] ~ "[^[:alnum:]%+,./:=@_-]" ? b q[w] b : q[w]) \
      (w < k ? "\\" b : "")
    }
    z = z FS
  }
  printf "\33[36m%s\33[m\n", wrap(z)
  system(z)
}
