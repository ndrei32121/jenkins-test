#!/bin/bash

echo "*****************"
echo "**** build docker image***** "
echo "*****************"
TAG=$1
docker build -t "go-builder:$TAG" build/


echo "******************"
echo "***** build application *****"
echo "******************"

docker run --rm -v /home/vagrant/:/mnt/ --name go-builder-container -d go-builder:$TAG