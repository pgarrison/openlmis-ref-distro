#!/bin/bash

docker-compose \
    -f docker-compose.yml \
    -f docker-compose.casper.yml \
    up \
    --build \
    --scale scalyr=0 \
    --scale nginx=0 \
    --scale superset=0