#!/usr/local/bin/shlib -f
f=$(mktemp)
seq 10 > "$f"
cat "$f"
echo
grep -v 5 "$f" | slurp "$f"
cat "$f"
