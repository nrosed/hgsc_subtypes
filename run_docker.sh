#!/bin/bash

docker build --platform linux/amd64 -t hgsc_subtypes:latest . && \
docker run --platform linux/amd64 --rm -it -v $PWD:/app hgsc_subtypes:latest /bin/bash


