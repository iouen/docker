nohup java -Xmx512m -Djava.security.egd=file:/dev/./urandom  -jar cf-api-gateway.jar &
echo $! > /app/cf-api-gateway/cf-api-gateway.pid
