#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/prod /tmp/.auth ec2-user@3.108.42.41:/tmp/.auth
