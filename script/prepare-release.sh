#!/bin/bash

echo "version = $1"

# Get version number from version tag
JAR_VERSION=`echo $1 | cut -d'v' -f2`
echo "jar = $JAR_VERSION"
echo "### MYSQL_DATABASE_NAME: $MYSQL_DATABASE_NAME"
echo "### LOCAL_MYSQL_USERNAME: $LOCAL_MYSQL_USERNAME"
echo "### LOCAL_MYSQL_PASSWORD: $LOCAL_MYSQL_PASSWORD"

# Package the new library version and copy it to release folder
# These files will be upload to github by @semantic-release/github
chmod +x gradlew

MYSQL_DATABASE_NAME=$MYSQL_DATABASE_NAME \
LOCAL_MYSQL_USERNAME=$LOCAL_MYSQL_USERNAME \
LOCAL_MYSQL_PASSWORD=$LOCAL_MYSQL_PASSWORD \
./gradlew -Pversion=$JAR_VERSION build

mkdir release && cp build/libs/*.jar release

printenv