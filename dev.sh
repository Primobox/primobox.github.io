#!/bin/bash

docker build -t primobox/techblog:latest .
docker run --rm -it -p 4000:4000 -p 35729:35729 -v $(pwd):/blog primobox/techblog:latest
