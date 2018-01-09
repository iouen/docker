#!/bin/bash
cd /app/cf-register-center
docker-compose build cf-register-center
sleep 2
docker-compose up -d cf-register-center
