#!/usr/local/bin/awklib -f
BEGIN {
  print "should be [2014-11-08]:"
  x = "<meta itemprop=\42datePublished\42 content=\0422014-11-08\42>"
  print html_attr("content", x)
  x = "<meta itemprop=\42datePublished\42 prop=\0422014-11-08\42>"
  print html_attr("prop", x)
  print

  print "should be [ 2014-11-08]:"
  x = "<meta itemprop=\42datePublished\42 content=\42 2014-11-08\42>"
  print html_attr("content", x)
  print

  print "should be [2014-11-08=]:"
  x = "<meta itemprop=\42datePublished\42 content=\0422014-11-08=\42>"
  print html_attr("content", x)
  print

  print "should be [2014 11 08]:"
  x = "<meta itemprop=\42datePublished\42 content=\0422014 11 08\42>"
  print html_attr("content", x)
  print

  print "should be [2014=11=08]:"
  x = "<meta itemprop=\42datePublished\42 content=\0422014=11=08\42>"
  print html_attr("content", x)
}
