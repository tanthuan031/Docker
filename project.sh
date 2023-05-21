#!/bin/bash
if [ "$1" == "up" ]; then
    echo "Starting project..."
    docker compose -f be_qr_code/docker-compose.yml up -d
    docker compose -f fe_qr_code/docker-compose.yml up -d
    docker compose -f ../nginx/docker-compose.yml up -d
    echo "Project started successfully!"
elif [ "$1" == "down" ]; then
    echo "Stopping project..."
    docker compose -f ../nginx/docker-compose.yml down --volumes
    docker compose -f be_qr_code/docker-compose.yml down --volumes
    docker compose -f fe_qr_code/docker-compose.yml down --volumes
    
    echo "Project stopped successfully!"
else
    echo "Invalid command. Please use 'up' or 'down'."
fi