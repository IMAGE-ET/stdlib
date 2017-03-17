StdLib
======
POSIX standard library for Awk and shell

Awk command line examples
-------------------------

~~~rb
$ awklib -h
# display help
~~~

~~~rb
$ awklib -v
1.2.1
~~~

~~~rb
$ awklib 'BEGIN {print ceil(2.1)}'
3
~~~

~~~rb
$ awklib 'BEGIN {print ceil(ARGV[1])}' 2.1
3
~~~

~~~rb
$ cat ceil.txt
2.1
3.1
4.1

$ awklib '{print ceil($0)}' ceil.txt
3
4
5
~~~

~~~rb
$ cat ceil.awk
BEGIN {print ceil(2.1)}

$ awk -f /usr/local/share/libstd.awk -f ceil.awk
3

$ awklib -f ceil.awk
3
~~~

~~~rb
$ cat ceil.awk
BEGIN {print ceil(ARGV[1])}

$ awk -f /usr/local/share/libstd.awk -f ceil.awk 2.1
3

$ awklib -f ceil.awk 2.1
3
~~~

Awk script example
------------------

~~~rb
#!/usr/local/bin/awklib -f
BEGIN {print ceil(2.1)}
~~~

~~~rb
#!/usr/local/bin/awklib -f
BEGIN {print ceil(ARGV[1])}
~~~

Shell command line examples
---------------------------

~~~rb
$ shlib -h
# display help
~~~

~~~rb
$ shlib -v
1.2.1
~~~

~~~rb
$ . /usr/local/share/libstd.sh
$ ceil 2.1
3
~~~

~~~rb
$ . shlib -c
$ ceil 2.1
3
~~~

~~~rb
$ shlib -c 'ceil 2.1'
3
~~~

~~~rb
$ shlib -c 'ceil "$1"' 2.1
3
~~~

~~~rb
$ cat ceil.sh
ceil 2.1

$ shlib ceil.sh
3
~~~

~~~rb
$ cat ceil.sh
ceil "$1"

$ shlib ceil.sh 2.1
3
~~~

Shell script examples
---------------------

~~~rb
#!/bin/sh
. /usr/local/share/libstd.sh
ceil 2.1
~~~

~~~rb
#!/usr/local/bin/shlib
ceil 2.1
~~~

~~~rb
#!/usr/local/bin/shlib
ceil "$1"
~~~

Links
-----
- [Shell programming languages have no standard library][xr]
- [POSIX Shell libraries and namespaces][wh]
- [C standard library][ya]
- [Standard library][zu]

Author
------------
Steven Penny

[wh]:http://hyperpolyglot.org/shell#libraries-namespaces
[xr]:http://unix.stackexchange.com/q/297792#297805
[ya]:http://wikipedia.org/wiki/C_standard_library
[zu]:http://wikipedia.org/wiki/Standard_library
