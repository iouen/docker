FROM docker.elastic.co/beats/filebeat:6.1.1
MAINTAINER ladd
COPY filebeat.yml /usr/share/filebeat/filebeat.yml
USER root
RUN chown filebeat /usr/share/filebeat/filebeat.yml
USER filebeat
