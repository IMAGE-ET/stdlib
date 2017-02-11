StdLib
======
POSIX standard library for Awk and shell scripts

Examples
---------------------
Shell command line:

~~~c
$ stdlib version
1.0.0

$ . stdlib sh

$ ceil 2.1
3
~~~

~~~c
$ cat alfa.sh
ceil 2.1

$ stdlib sh ./alfa.sh
3

$ cat bravo.sh
ceil "$1"

$ stdlib sh ./bravo.sh 2.1
3
~~~

Shell script:

~~~sh
#!/usr/local/bin/stdlib sh
ceil 2.1
~~~

~~~sh
#!/bin/sh
. /usr/local/share/libstd.sh
ceil 2.1
~~~

~~~sh
#!/bin/sh
. stdlib sh
ceil 2.1
~~~

Awk command line:

~~~pl
$ cat alfa.awk
BEGIN {print ceil(2.1)}

$ awk -f /usr/local/share/libstd.awk -f ./alfa.awk
3

$ stdlib awk ./alfa.awk
3

$ cat bravo.awk
BEGIN {print ceil(ARGV[1])}

$ awk -f /usr/local/share/libstd.awk -f ./bravo.awk 2.1
3

$ stdlib awk ./bravo.awk 2.1
3
~~~

~~~sh
$ echo 'BEGIN {print ceil(2.1)}' | awk -f /usr/local/share/libstd.awk -f -
3

$ echo 'BEGIN {print ceil(ARGV[1])}' | awk -f /usr/local/share/libstd.awk -f - 2.1
3

$ echo 'BEGIN {print ceil(2.1)}' | stdlib awk -
3

$ echo 'BEGIN {print ceil(ARGV[1])}' | stdlib awk - 2.1
3
~~~

Awk script:

~~~awk
#!/usr/local/bin/stdlib awk
BEGIN {print ceil(2.1)}
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
