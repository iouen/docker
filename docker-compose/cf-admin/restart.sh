#!/bin/bash
cd /app
docker-compose build cf-admin
sleep 2
docker-compose up -d cf-admin
