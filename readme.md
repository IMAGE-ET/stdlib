StdLib
======
POSIX standard library for Awk and shell scripts

Examples
---------------------
Awk script:

~~~awk
#!/usr/local/bin/stdlib awk
BEGIN {print ceil(2.1)}
~~~

Awk command line:

~~~
awk -f /usr/share/awk/libstd.awk -f ceil.awk
~~~

Shell script:

~~~sh
#!/usr/local/bin/stdlib sh
~~~

Or you can source the library directly:

~~~sh
. /usr/share/sh/libstd.sh
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
