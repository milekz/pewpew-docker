# pewpew-docker

HTTP(S) & HTTP2 load tester for performance and stress testing

Forked and dockerized from https://github.com/bengadbois/pewpew

Sample usage
```
# docker run -ti --rm pewpew:0 pewpew stress google.com -c4 -n20
Stress testing 1 target:
- Running 20 tests at google.com, 4 at a time
HTTP/1.1 200	13 kB 	131 ms	-> GET http://google.com
HTTP/1.1 200	13 kB 	131 ms	-> GET http://google.com
HTTP/1.1 200	13 kB 	135 ms	-> GET http://google.com
HTTP/1.1 200	13 kB 	138 ms	-> GET http://google.com
HTTP/1.1 200	13 kB 	82 ms	-> GET http://google.com
HTTP/1.1 200	13 kB 	84 ms	-> GET http://google.com
HTTP/1.1 200	13 kB 	131 ms	-> GET http://google.com
HTTP/1.1 200	13 kB 	146 ms	-> GET http://google.com
HTTP/1.1 200	13 kB 	84 ms	-> GET http://google.com
HTTP/1.1 200	13 kB 	95 ms	-> GET http://google.com
HTTP/1.1 200	13 kB 	82 ms	-> GET http://google.com
HTTP/1.1 200	13 kB 	95 ms	-> GET http://google.com
HTTP/1.1 200	13 kB 	88 ms	-> GET http://google.com
HTTP/1.1 200	13 kB 	94 ms	-> GET http://google.com
HTTP/1.1 200	13 kB 	82 ms	-> GET http://google.com
HTTP/1.1 200	13 kB 	82 ms	-> GET http://google.com
HTTP/1.1 200	13 kB 	83 ms	-> GET http://google.com
HTTP/1.1 200	13 kB 	86 ms	-> GET http://google.com
HTTP/1.1 200	13 kB 	82 ms	-> GET http://google.com
HTTP/1.1 200	13 kB 	83 ms	-> GET http://google.com

----Summary----


Timing
Mean query speed:     101 ms
Fastest query speed:  82 ms
Slowest query speed:  146 ms
Mean RPS:             36.48 req/sec
Total time:           548 ms

Data Transferred
Mean query:      13 kB
Largest query:   13 kB
Smallest query:  13 kB
Total:           253 kB

Response Codes
200: 20 responses (100.00%)

```


```
Usage:
  pewpew [command]

Available Commands:
  help        Help about any command
  stress      Run stress tests
  version     Displays version

Flags:
      --basic-auth string       Add HTTP basic authentication, eg. 'user123:password456'.
      --body string             String to use as request body e.g. POST body.
      --body-file string        Path to file to use as request body. Will overwrite --body if both are present.
  -C, --compress                Add 'Accept-Encoding: gzip' header if Accept-Encoding is not already present. (default true)
      --cookies string          Add request cookies, eg. 'data=123; session=456'
      --cpu int                 Number of CPUs to use. (default 16)
      --dns-prefetch            Prefetch IP from hostname before making request, eliminating DNS fetching from timing.
      --enforce-ssl             Enfore SSL certificate correctness.
      --follow-redirects        Follow HTTP redirects. (default true)
  -H, --headers string          Add arbitrary header line, eg. 'Accept-Encoding:gzip, Content-Type:application/json'
  -h, --help                    help for pewpew
  -k, --keepalive               Enable HTTP KeepAlive. (default true)
      --no-http2                Disable HTTP2.
      --output-csv string       Path to file to write full data as CSV
      --output-json string      Path to file to write full data as JSON
      --output-xml string       Path to file to write full data as XML
  -q, --quiet                   Do not print while requests are running.
  -r, --regex                   Interpret URLs as regular expressions.
  -X, --request-method string   Request type. GET, HEAD, POST, PUT, etc. (default "GET")
  -t, --timeout string          Maximum seconds to wait for response (default "10s")
  -A, --user-agent string       Add User-Agent header. Can also be done with the arbitrary header flag. (default "pewpew")
  -v, --verbose                 Print extra troubleshooting info.

Use "pewpew [command] --help" for more information about a command.
```
