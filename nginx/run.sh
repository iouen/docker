#!/bin/bash
source /etc/profile
/usr/sbin/sshd &
/usr/local/nginx/sbin/nginx
