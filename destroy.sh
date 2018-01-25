#!/bin/sh
# Destroy Script for Zafra

echo 'backing up the database first ...'
cd database && ./backup.sh
echo 'database backup complete.'
echo 'destroy/stop all containers ...'
echo 'running docker-compose down'
docker-compose down
echo 'all containers just died peacefully ...'
docker ps -a
