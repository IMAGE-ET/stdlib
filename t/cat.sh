#!/bin/dash -e
z=$(mktemp)
cat > "$z" <<'eof'
awklib 'BEGIN{print ceil(2.1)}'
awklib 'BEGIN{print ceil(2.1)}'
awklib 'BEGIN{print ceil(2.1)}'
awklib 'BEGIN{print ceil(2.1)}'
awklib 'BEGIN{print ceil(2.1)}'
eof
strace dash "$z" | wc -l
cat > "$z" <<'eof'
LIBAWK=$(cat /usr/local/share/libstd.awk)
awk "$LIBAWK"'BEGIN{print ceil(2.1)}'
awk "$LIBAWK"'BEGIN{print ceil(2.1)}'
awk "$LIBAWK"'BEGIN{print ceil(2.1)}'
awk "$LIBAWK"'BEGIN{print ceil(2.1)}'
awk "$LIBAWK"'BEGIN{print ceil(2.1)}'
eof
strace dash "$z" | wc -l
