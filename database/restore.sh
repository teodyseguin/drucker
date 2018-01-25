#!/bin/sh
# Restore Zafra Database

cat ./drupal.sql | docker exec -i database /usr/bin/mysql -u root --password=drupal drupal
