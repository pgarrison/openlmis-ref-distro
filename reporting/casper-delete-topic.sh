#!/bin/bash

docker-compose -f docker-compose.yml -f docker-compose.casper.yml \
    exec kafka /usr/bin/kafka-topics \
    --zookeeper zookeeper:32181 \
    --delete \
    --topic $1