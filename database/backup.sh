#!/bin/sh
# Backup database

docker exec database /usr/bin/mysqldump -u root --password=drupal drupal > drupal.sql
