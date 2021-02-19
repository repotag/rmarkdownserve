#!/bin/bash
curl --header "Content-Type: application/json" \
  --request POST \
  --data "@fragments.json" \
  http://localhost:4567/fragments2html
