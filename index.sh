#!/bin/bash

ABX=v$(grep "versionName \"[1-9].[0-9].[0-9]\"" android/app/build.gradle | tr -d ' ' | cut -c 13-17 )

echo $ABX

LATEST_VERSION=v1.2.3

echo ${LATEST_VERSION:6}

if [[ ${LATEST_VERSION:6} != '' ]]; then
  NEW_MINOR_FIGURE=$(echo "${LATEST_VERSION:6}" | tr "0-9a-z" "1-9a-z_")
  NEW_VERSION=${LATEST_VERSION:1:5}${NEW_MINOR_FIGURE}
else
  NEW_VERSION=${LATEST_VERSION}a
fi

echo $NEW_VERSION

LATEST_RELEASE=$(curl --silent -i -u username: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 "https://api.github.com/repos/MaxKim-J/actions-node-which/releases/latest" | grep '"tag_name":' | sed -E 's/"tag_name": "(.+)"\,/\1/')



echo ${LATEST_RELEASE}