FROM java:8
MAINTAINER ladd
ARG jarName
RUN mkdir -p /app/cf-config-center 
ADD ./cf-config-center.jar /app/cf-config-center/
CMD ["java", "-Xmx200m", "-jar", "/app/cf-config-center/cf-config-center.jar","eureka.instance.preferIpAddress=false","--eureka.client.serviceUrl.defaultZone=http://192.168.2.80:8761/eureka/","--logging.path=/app/logs","--logging.level.root=info"]

EXPOSE 8019
