#!/bin/dash -e
say() {
  echo
  echo "test $1"
}
x=$(mktemp)
chmod +x "$x"

say 1
shlib -v

say 2
shlib -c 'ceil 2.1'

say 3
shlib -c 'ceil "$1"' 2.1

say 4
echo 'ceil 2.1' > "$x"
shlib "$x"

say 5
echo 'ceil "$1"' > "$x"
shlib "$x" 2.1

say 6
cat > "$x" <<'eof'
#!/usr/local/bin/shlib
ceil 2.1
eof
"$x"

say 7
cat > "$x" <<'eof'
#!/usr/local/bin/shlib
ceil "$1"
eof
"$x" 2.1

say 8
awklib -v

say 9
awklib 'BEGIN {print ceil(2.1)}'

say 10
awklib 'BEGIN {print ceil(ARGV[1])}' 2.1

say 11
cat > "$x" <<'eof'
2.1
3.1
4.1
eof
awklib '{print ceil($0)}' "$x"

say 12
echo 'BEGIN {print ceil(2.1)}' > "$x"
awklib -f "$x"

say 13
echo 'BEGIN {print ceil(ARGV[1])}' > "$x"
awklib -f "$x" 2.1

say 14
cat > "$x" <<'eof'
#!/usr/local/bin/awklib -f
BEGIN {print ceil(2.1)}
eof
"$x"

say 15
cat > "$x" <<'eof'
#!/usr/local/bin/awklib -f
BEGIN {print ceil(ARGV[1])}
eof
"$x" 2.1
