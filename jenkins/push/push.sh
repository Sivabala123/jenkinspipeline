#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u sivabala123 -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG sivabala123/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push sivabala123/$IMAGE:$BUILD_TAG
