#!/bin/bash

DIFF=$(git diff --name-only HEAD master)

is_review_relase=true

for x in $DIFF
do
  echo $x
  if [[ $x == *.android* ]] || [[ $x == *.ios* ]]
  then
    is_review_relase=false
    break
  fi
done

echo $is_review_relase
