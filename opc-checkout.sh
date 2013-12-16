#!/bin/bash

if [ -z "$1" ]; then
  echo usage: $0 [project] dir
  exit
fi

if [ -z "$2" ]; then
  svn checkout http://tahoe/svnroot/spectrum/trunk/omneon/flexapps $1 --depth empty
  cd $1
else
  svn checkout http://tahoe/svnroot/spectrum/$1/omneon/fleaxapps $2 --depth empty
  cd $2
fi

svn update --set-depth files
svn update --set-depth infinity as3xmlrpc cairngorm3 icpCommonLib icpFXTool \
  icpPlayoutTool icpPreviewTool icpScheduleTool thirdPartyLibs icpXmlSocketLib


