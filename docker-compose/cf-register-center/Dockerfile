FROM java:8
MAINTAINER ladd
ARG jarName
RUN mkdir -p /app/cf-register-center 
ADD ./cf-register-center.jar /app/cf-register-center/
CMD ["java", "-Xmx200m", "-jar", "/app/cf-register-center/cf-register-center.jar","--logging.path=/app/logs","--logging.level.root=info"]

EXPOSE 8761
