#!/bin/bash

# make-html-from-text.awk
# awk -f make-html-from-text.awk {filename} > index.html

BEGIN { print "<html>\n<head><title>Awk-generated HTML</title></head>\n<body bgcolor=\"#ffffff\">\n<pre>" }
{ print $0 }
END { print "</pre>\n</body>\n</html>" }