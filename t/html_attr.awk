#!/usr/local/bin/awklib -f
BEGIN {
  x[1] = "<meta itemprop=\42datePublished\42 content=\0422014-11-08\42>"
  x[2] = "<meta  itemprop=\42datePublished\42 content=\0422014-11-08\42>"
  x[3] = "<meta itemprop=\42datePublished\42 prop=\0422014-11-08\42>"
  print "should be [2014-11-08]:"
  print html_attr("content", x[1])
  print html_attr("content", x[2])
  print html_attr("prop", x[3])
  print
  
  x[4] = "<meta itemprop=\42datePublished\42 content=\42 2014-11-08\42>"
  print "should be [ 2014-11-08]:"
  print html_attr("content", x[4])
  print
  
  x[5] = "<meta itemprop=\42datePublished\42 content=\0422014-11-08=\42>"
  print "should be [2014-11-08=]:"
  print html_attr("content", x[5])
  print
  
  x[6] = "<meta itemprop=\42datePublished\42 content=\0422014 11 08\42>"
  print "should be [2014 11 08]:"
  print html_attr("content", x[6])
  print
  
  x[7] = "<meta itemprop=\42datePublished\42 content=\0422014=11=08\42>"
  print "should be [2014=11=08]:"
  print html_attr("content", x[7])
}
