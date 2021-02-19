#!/bin/bash
curl \
  --request POST \
  --data "@fulldoc.txt" \
  http://localhost:4567/doc2html
