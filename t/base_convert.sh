#!/bin/dash -e

base_convert() {
  php -r 'echo base_convert($argv[1], $argv[2], $argv[3]) . "\n";' "$@"
  awklib 'BEGIN {print base_convert(ARGV[1], ARGV[2], ARGV[3])}' "$@"
}

yellow() {
  printf '\33[1;33m%s\33[m\n' "$@"
}

yellow 'oct -> hex'
base_convert 12 8 16
echo

yellow 'hex -> oct'
base_convert A 16 8
echo

yellow 'bin -> hex'
base_convert 1010 2 16
echo

yellow 'hex -> bin'
base_convert A 16 2
echo

yellow 'bin -> oct'
base_convert 1010 2 8
echo

yellow 'oct -> bin'
base_convert 12 8 2
echo

yellow 'hex -> dec'
base_convert A 16 10
echo

yellow 'oct -> dec'
base_convert 11 8 10
echo

yellow 'bin -> dec'
base_convert 1010 2 10
echo

yellow 'dec -> hex'
base_convert 11 10 16
echo

yellow 'dec -> oct'
base_convert 9 10 8
echo

yellow 'dec -> bin'
base_convert 11 10 2
echo

yellow 'string addition'
php -r 'echo base_convert("A", 16, 10) + base_convert("B", 16, 10) . "\n";'
awklib 'BEGIN {print base_convert("A", 16, 10) + base_convert("B", 16, 10)}'
echo

yellow 'number = null'
php -r 'echo base_convert(NULL, 10, 16) . "\n";'
php -r 'echo base_convert("", 10, 16) . "\n";'
awklib 'BEGIN {print base_convert("", 10, 16)}'
echo

yellow 'number = 0'
base_convert 0 10 16
echo

yellow 'number = invalid character'
base_convert 1,000 10 16
echo

yellow 'number > frombase'
base_convert 190 8 2
echo

yellow 'frombase = null'
php -r 'echo base_convert(10, NULL, 16);'
php -r 'echo base_convert(10, "", 16);'
awklib 'BEGIN {print base_convert(10, "", 16)}'
echo

yellow 'frombase < 2'
php -r 'echo base_convert(11, 1, 16);'
awklib 'BEGIN {print base_convert(11, 1, 16)}'
echo

yellow 'frombase > 36'
php -r 'echo base_convert(11, 37, 16);'
awklib 'BEGIN {print base_convert(11, 37, 16)}'
echo

yellow 'tobase = null'
php -r 'echo base_convert("A", 16);'
php -r 'echo base_convert("A", 16, NULL);'
php -r 'echo base_convert("A", 16, "");'
awklib 'BEGIN {print base_convert("A", 16)}'
awklib 'BEGIN {print base_convert("A", 16, "")}'
echo

yellow 'tobase < 2'
php -r 'echo base_convert("A", 16, 1);'
awklib 'BEGIN {print base_convert("A", 16, 1)}'
echo

yellow 'tobase > 36'
php -r 'echo base_convert("A", 16, 37);'
awklib 'BEGIN {print base_convert("A", 16, 37)}'
echo

yellow 'frombase = invalid character'
php -r 'echo base_convert(11, "1,0", 16);'
awklib 'BEGIN {print base_convert(11, "1,0", 16)}'
echo

yellow 'tobase = invalid character'
php -r 'echo base_convert(11, 10, "1,6");'
awklib 'BEGIN {print base_convert(11, 10, "1,6")}'
