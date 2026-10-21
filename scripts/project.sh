#!/bin/bash

# Stop registry environment.
cd ~/docker-registry
docker-compose down

# Start project environment
cd ~/project/
systemctl start nginx
docker-compose down; docker compose up -d --build --remove-orphans;

# Stop project environment.
# systemctl stop nginx
# docker-compose down

# Start registry environment.
# cd ~/docker-registry
# docker-compose down; docker compose up -d --build --remove-orphans;
# docker pull slava-kvet.com/frontend
