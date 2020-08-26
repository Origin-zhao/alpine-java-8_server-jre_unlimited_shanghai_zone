FROM anapsix/alpine-java:8_server-jre_unlimited

RUN apk add -U tzdata && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' > /etc/timezone && apk del tzdata \
    && rm -fr /var/cache/apk/
    
