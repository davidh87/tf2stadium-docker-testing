#!/bin/bash

PORT=23432

docker build -t landingpage_img_1 .
docker run -d --name landingpage -p $PORT:80 -t landingpage_img_1

echo "Running on port $PORT"