#! /bin/bash
# Start and/or update existing services.

docker-compose pull
docker-compose stop nimbus besu mevboost ssv | docker-compose rm -v nimbus besu mevboost ssv
docker-compose up --remove-orphans-d nimbus besu mevboost ssv