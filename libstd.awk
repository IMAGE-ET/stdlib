function ceil(x,   y) {
  y = int(x)
  return y < x ? y + 1 : y
}

function std_chr(inte) {
  return sprintf("%c", +inte)
}

function exists(file) {
  return getline < file < 0 ? 0 : 1
}

function floor(x,   y) {
  y = int(x)
  return y > x ? y - 1 : y
}

function html_attr(attr, elem,   x, z) {
  split(elem, x, "\42")
  for (z in x) {
    if (z % 2 && x[z] ~ " " attr "=") {
      return x[++z]
    }
  }
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

function std_join(arr, separator,   q, x) {
  for (q in arr)
    x = x ? x separator arr[q] : arr[q]
  return x
}

function json(diamond, rough,   x, y, z) {
  split(rough, x, /\42?, ?\42/)
  for (y in x) {
    if (x[y] ~ diamond) {
      split(x[y], z, /\42: ?\42?/)
      return z[2]
    }
  }
}

function std_length(arr,   q, x) {
  for (q in arr)
    x++
  return x
}

function max(arr,   y, z) {
  for (y in arr)
    if (arr[y] > z) {
      z = arr[y]
    }
  return z
}

function mean(arr,   y, z) {
  for (y in arr)
    z += arr[y]
  return z / y
}

function min(arr,   y, z) {
  for (y in arr)
    if (!z || arr[y] < z) {
      z = arr[y]
    }
  return z
}

function std_ord(char,   x) {
  while (sprintf("%c", ++x) != char);
  return x
}

function quote(str,   d, m, x, y, z) {
  d = "\47"
  m = split(str, x, d)
  for (y in x)
    z = z d x[y] (y < m ? d "\\" d : d)
  return z
}

function repeat(str, cnt,   x) {
  while (cnt--)
    x = x str
  return x
}

function rindex(rough, diamond,   y, z) {
  while (y = index(substr(rough, z + 1), diamond))
    z += y
  return z
}

function slice(arr, begin, end,   q, x, z) {
  for (q in arr)
    if (q >= begin && (!end || +q < end)) {
      x[q] = arr[q]
    }
  delete arr
  z = 0
  for (q in x)
    arr[++z] = x[q]
  return z
}

function smartmatch(diamond, rough,   x, y) {
  for (x in rough)
    y[rough[x]]
  return diamond in y
}

function strtotime(date,   x, q) {
  split(date, x, /[-T:Z]/)
  return \
  time_year(x[1] - 1970) + \
  time_mon(x[2] - 1) + \
  time_day(x[3] - 1) + \
  time_hour(x[4]) + \
  time_min(x[5]) + \
  x[6]
}

function strtol(string, base,   xr, ya) {
  while (1) {
    ya += index("0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ",
      substr(string, ++xr, 1)) - 1
    if (xr == length(string))
      break
    ya *= base
  }
  return ya
}

function sum(arr,   x, y) {
  for (x in arr)
    y += arr[x]
  return y
}

function time() {
  srand()
  return srand()
}

function time_min(x) {
  return x * 60
}

function time_hour(x) {
  return x * 60 * 60
}

function time_day(x) {
  return x * 60 * 60 * 24
}

function time_mon(x,   y) {
  split("31 28 31 30 31 30 31 31 30 31 30 31", y)
  slice(y, 1, ++x)
  return sum(y) * 60 * 60 * 24
}

function time_year(x) {
  return x * 60 * 60 * 24 * 365.25
}

function uri_escape(string,   k, q, z) {
  while (k = substr(string, ++q, 1))
    z = z (k ~ /[[:alnum:]_.!~*\47()-]/ ? k : "%" sprintf("%02X", std_ord(k)))
  return z
}

function uri_unescape(string,   k, x, z) {
  while (k = substr(string, ++x, 1))
    if (k == "%") {
      z = z std_chr("0x" substr(string, ++x, 2))
      ++x
    }
    else {
      z = z k
    }
  return z
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
  for (d in arr) {
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
