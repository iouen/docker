#!/bin/bash
cd /app/cf-config-center
docker-compose build cf-config-center
sleep 2
docker-compose up -d cf-config-center
