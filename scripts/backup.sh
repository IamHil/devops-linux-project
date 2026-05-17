#!/bin/bash

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

tar -czf backups/project_backup_$TIMESTAMP.tar.gz app docker docker-compose.yml

echo "$(date) : Backup completed" >> logs/backup.log


