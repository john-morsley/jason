﻿#!/bin/bash

docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)

docker rmi $(docker images -a -q)

docker system prune -a -f

docker images
docker ps -a