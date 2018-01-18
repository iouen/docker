#新生成的镜像是基于sshd:dockerfile镜像
FROM centos
MAINTAINER by ops
WORKDIR /usr/local/src
#安装wget
RUN yum install -y  wget
#下载并解压源码包
RUN wget http://nginx.org/download/nginx-1.8.0.tar.gz
RUN tar -zxvf nginx-1.8.0.tar.gz
WORKDIR nginx-1.8.0
#编译安装nginx
RUN yum install -y gcc make pcre-devel zlib-devel pcre pcre-devel pcre* gcc gcc-c++ ncurses-devel perl zlib-devel  openssl openssl-devel
RUN ./configure \
--prefix=/usr/local/nginx \
--with-http_realip_module \
--with-http_sub_module \
--with-http_gzip_static_module \
--with-http_stub_status_module  \
--with-pcre \
--with-http_ssl_module
RUN make
RUN make install
#启动Nginx服务
RUN /usr/local/nginx/sbin/nginx
#修改Nginx配置文件,以非daemon方式启动
RUN echo "daemon off;">>/usr/local/nginx/conf/nginx.conf
#复制服务启动脚本并设置权限
ADD run.sh /usr/local/sbin/run.sh
RUN chmod 755 /usr/local/sbin/run.sh
#设置生成容器时需要执行的脚本
CMD ["/usr/local/sbin/run.sh"]
#CMD ["/usr/local/nginx/sbin/nginx"]
#开放22、80、443端口
#EXPOSE 22
EXPOSE 80
#EXPOSE 443
