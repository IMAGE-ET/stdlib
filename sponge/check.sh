#!/bin/dash -e
f=$(mktemp)
seq 10 > "$f"
cat "$f"
echo
grep -v 5 "$f" | sponge.awk "$f"
cat "$f"
