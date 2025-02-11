#! /bin/bash
# Start and/or update existing services.

docker-compose down
docker-compose pull
docker-compose up --remove-orphans-d