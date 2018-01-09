#!/bin/sh
PID=$(cat /app/cf-api-gateway/cf-api-gateway.pid)
kill -9 $PID

