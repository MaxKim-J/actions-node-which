#!/bin/bash

DIFF=($(git diff --name-only f4f0d3b dbc20ad))

for x in $DIFF
do
  echo $x
  echo '으앙..'
done