#!/bin/bash

ABX=v$(grep "versionName \"[1-9].[0-9].[0-9]\"" android/app/build.gradle | tr -d ' ' | cut -c 13-17 )

echo $ABX

VERSION=v1.2.3a

cut -c 7 $VERSION
echo $VERSION

#VERSION_LAST_FIGURE=$VERSION |
#
#echo $VERSION_LAST_FIGURE

if [ $VERSION_LAST_FIGURE = ' ' ]; then
  echo '으앙'
else
  echo '으억'
fi