#!/bin/bash
set -e

docker-compose stop
docker-compose rm -f jenkins-master
docker-compose rm -f jenkins-agent-terraform
