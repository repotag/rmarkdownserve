# RMarkdownServe

A webapp that returns rendered R codeblocks by wrapping calls to `knitr`. Endpoints:

* `/doc2html`: takes a full html doc fragment, knits it as a whole, and returns the rendered doc.
* `/fragments2html`: Takes JSON array of fragments (codeblock), renders them individually, and returns a JSON array with the rendered fragments as strings.

Benchmarks required to see what's faster (`/fragments2html` won't require knitr to parse an entire html doc).

Usage:

```
# Run app:
$ bundle install
$ bundle exec ruby app.rb
```

Then use `generate_post_data.rb` to generate example document fragments:

```
# First generate example fragments for the curl scripts
$ ruby generate_post_data.rb 
# Now hit the endpoints with the example data to get knitted results
$ ./curl_fragments.sh
$ ./curl_fulldoc.sh
```

