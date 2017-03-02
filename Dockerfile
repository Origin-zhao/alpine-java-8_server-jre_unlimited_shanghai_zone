FROM anapsix/alpine-java:8_server-jre_unlimited
apk update
apk add tzdata
RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime\
    && echo 'Asia/Shanghai' > /etc/timezone\
    && rm -fr /var/cache/apk/
    
