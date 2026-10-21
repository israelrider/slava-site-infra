#!/bin/bash

# Stop project environment.
cd ~/project/
docker-compose down;
systemctl stop nginx

# Start registry environment.
cd ~/docker-registry
docker-compose down; docker compose up -d --build --remove-orphans;
# docker pull slava-kvet.com/frontend

# Stop registry environment.
# docker-compose down;

# Start project environment
# cd ~/project/
# systemctl start nginx
# docker-compose down; docker compose up -d --build --remove-orphans;