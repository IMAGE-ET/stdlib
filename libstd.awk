function array_join(arr, separator,   q, x) {
  for (q in arr)
    x = x ? x separator arr[q] : arr[q]
  return x
}

function array_length(arr,   q, x) {
  for (q in arr)
    x++
  return x
}

function ceil(x,   y) {
  y = int(x)
  return y < x ? y + 1 : y
}

function floor(x,   y) {
  y = int(x)
  return y > x ? y - 1 : y
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
    z = z (g ~ /[[:alnum:]_.!~*\47()-]/ ? g : "%" sprintf("%02X", q[g]))
  return z
}

function exists(file) {
  return getline < file < 0 ? 0 : 1
}

function max(value1, value2) {
  return value1 > value2 ? value1 : value2
}

function ord(chr,   x, y) {
  for (x = 0; x < 127; x++)
    y[sprintf("%c", x)] = x
  return y[chr]
}

function quote(str,   d, m, x, y, z) {
  d = "\47"
  m = split(str, x, d)
  for (y in x)
    z = z d x[y] (y < m ? d "\\" d : d)
  return z
}

function slice(arr, begin, end,   q, x, z) {
  for (q in arr)
    if (q >= begin && (!end || q < end)) {
      x[q] = arr[q]
    }
  delete arr
  for (q in x) {
    arr[++z] = x[q]
  }
}

function smartmatch(diamond, rough,   x, y) {
  for (x in rough)
    y[rough[x]]
  return diamond in y
}

function wrap(text,   q, y, z) {
  while (text) {
    q = match(text, / |$/)
    y += q - 1
    if (y > 80) {
      z = z "\n"
      y = q - 1
    }
    else if (z) {
      z = z " "
      y++
    }
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
    if (d - 1)
      z = z " "
    for (w in q) {
      z = z (!k || q[w] ~ "[^[:alnum:]%+,./:=@_-]" ? b q[w] b : q[w]) \
      (w < k ? "\\" b : "")
    }
  }
  printf "\33[36m%s\33[m\n", wrap(z)
  system(z)
}
