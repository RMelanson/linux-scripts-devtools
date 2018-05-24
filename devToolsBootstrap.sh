#!/bin/bash
devToolsCurrDir=$PWD

#Set Cloning Properties
pkg=devTools
gitRepo="linux-scripts-devtools.git"
installDir="/tmp/scripts/dev/tools"
if [ -f "~/.ssh/gitHub.key" ]; then
   clone="git clone git@github.com:RMelanson/"
else
   clone="git clone https://github.com/RMelanson/"
fi

# Clone $pkg
echo Executing $clone$gitRepo $installDir
$clone$gitRepo $installDir

# Setup $pkg
cd $installDir
. ./setup.sh

cd $devToolsCurrDir
