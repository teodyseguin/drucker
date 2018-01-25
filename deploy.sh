#!/bin/sh
# Deployment Script for Zafra

echo 'deploy starts ...'
echo 'running docker-compose up --build -d'
docker-compose up --build -d
docker exec drupal mkdir /var/www/html/sites/default/files
docker exec drupal chmod 777 /var/www/html/sites/default/files
docker exec drupal cp /var/www/html/sites/default/default.settings.php /var/www/html/sites/default/settings.php
docker exec drupal chmod 777 /var/www/html/sites/default/settings.php
