#!/bin/bash

# DEV_TOOLS CONFIGURATION PARAMETERS

bootstrap="devToolsBootstrap.sh"

gitRepo="linux-scripts-devtools.git"

pkg=DEV_TOOLS
scriptType="dev"
parentDir="/tmp/scripts/$scriptType/"
installDir="$parentDir/$pkg"

# MAVEN INSTALATION PARMS
MVN_HOME=/opt/mvn
mvnMirror=http://apache.mirror.iweb.ca/maven/maven-3/3.6.1
mvnVersion=apache-maven-3.6.1-bin.tar.gz
mvnURL=$mvnMirror/$mvnVersion

