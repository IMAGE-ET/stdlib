#!/bin/dash -e
date -u -d 2017-3-1 +%s
awklib 'BEGIN {print strtotime("2017-3-1")}'
echo
date -u -d 2017-1-1 +%s
awklib 'BEGIN {print strtotime("2017-1-1")}'
echo

date -u -d 2016-3-1 +%s
awklib 'BEGIN {print strtotime("2016-3-1")}'
echo
date -u -d 2016-1-1 +%s
awklib 'BEGIN {print strtotime("2016-1-1")}'
echo

date -u -d 2015-3-1 +%s
awklib 'BEGIN {print strtotime("2015-3-1")}'
echo
date -u -d 2015-1-1 +%s
awklib 'BEGIN {print strtotime("2015-1-1")}'
echo

date -u -d 2014-3-1 +%s
awklib 'BEGIN {print strtotime("2014-3-1")}'
echo
date -u -d 2014-1-1 +%s
awklib 'BEGIN {print strtotime("2014-1-1")}'
