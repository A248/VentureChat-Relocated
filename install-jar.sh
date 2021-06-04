#!/bin/bash

JAR=`readlink -f $1`
echo "Using jar $JAR"
REPO=`readlink -f repo`

mvn install:install-file -Dfile=$JAR -DgroupId=aust1n46.venturechat -DartifactId=venturechat -Dversion=0.1.0-SNAPSHOT -Dpackaging=jar -DlocalRepositoryPath=$REPO
