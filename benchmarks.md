# Benchmarks

## MRI

### Fragments

```
user     system      total        real
0.002072   0.001855   2.033131 (  2.125722)
::1 - - [19/Feb/2021:15:04:19 CET] "POST /fragments2html HTTP/1.1" 200 59726
- -> /fragments2html
user     system      total        real
0.002055   0.001794   2.048888 (  2.140513)
::1 - - [19/Feb/2021:15:04:41 CET] "POST /fragments2html HTTP/1.1" 200 60438
- -> /fragments2html
user     system      total        real
0.001908   0.001768   2.022017 (  2.117220)
::1 - - [19/Feb/2021:15:04:55 CET] "POST /fragments2html HTTP/1.1" 200 60974
- -> /fragments2html
```

### Fulldoc

```
user     system      total        real
0.002620   0.002234   1.876653 (  1.955840)
::1 - - [19/Feb/2021:15:07:09 CET] "POST /doc2html HTTP/1.1" 200 60694
- -> /doc2html
user     system      total        real
0.001552   0.001550   1.884462 (  1.963590)
::1 - - [19/Feb/2021:15:07:14 CET] "POST /doc2html HTTP/1.1" 200 60194
- -> /doc2html
user     system      total        real
0.002085   0.001925   1.902837 (  1.991960)
::1 - - [19/Feb/2021:15:07:17 CET] "POST /doc2html HTTP/1.1" 200 61138
- -> /doc2html
```

## JRuby

### Fragments

```
user     system      total        real
0.090000   0.010000   2.090000 (  2.097054)
0:0:0:0:0:0:0:1 - - [19/Feb/2021:15:12:56 CET] "POST /fragments2html HTTP/1.1" 200 60810
- -> /fragments2html
user     system      total        real
0.110000   0.000000   2.130000 (  2.116535)
0:0:0:0:0:0:0:1 - - [19/Feb/2021:15:13:06 CET] "POST /fragments2html HTTP/1.1" 200 60714
- -> /fragments2html
user     system      total        real
0.040000   0.010000   2.090000 (  2.142604)
0:0:0:0:0:0:0:1 - - [19/Feb/2021:15:13:11 CET] "POST /fragments2html HTTP/1.1" 200 60494
- -> /fragments2html
```

### Fulldoc

```
user     system      total        real
0.300000   0.010000   2.530000 (  2.636042)
0:0:0:0:0:0:0:1 - - [19/Feb/2021:15:11:54 CET] "POST /doc2html HTTP/1.1" 200 60322
- -> /doc2html
user     system      total        real
0.050000   0.000000   2.020000 (  2.087760)
0:0:0:0:0:0:0:1 - - [19/Feb/2021:15:12:05 CET] "POST /doc2html HTTP/1.1" 200 61058
- -> /doc2html
user     system      total        real
0.190000   0.010000   2.200000 (  2.139631)
0:0:0:0:0:0:0:1 - - [19/Feb/2021:15:12:09 CET] "POST /doc2html HTTP/1.1" 200 59774
- -> /doc2html
```
