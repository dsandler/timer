#!/bin/sh

# docs: https://github.com/alcor/itty-bitty/wiki/

cat index.html | \
	lzma -9 | base64 -w0 | \
	xargs -0 printf "https://itty.bitty.site/Timer/f/⏲️/#/%s\n"
