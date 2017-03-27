Functions that expect numeric arguments do not need to assume that strings could
be provided. Even if they handled string arguments, you would still need to do
casts outside of functions:

~~~
if (+base_convert(num, 16, 10) < 128) {
  return num
}
~~~

So it is best to rely on the user to provide proper input in this regard.
