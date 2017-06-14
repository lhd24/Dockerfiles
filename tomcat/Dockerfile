FROM haidong/docker-java
MAINTAINER haidong <383623085@qq.com>

ENV TOMCAT_VERSION=8.5.15
ENV TOMCAT_HOME=/opt/tomcat

# Download and extract jdk to opt folder
RUN curl -L http://mirrors.tuna.tsinghua.edu.cn/apache/tomcat/tomcat-8/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz \    
    | tar -zx -C /opt \
    && ln -s /opt/apache-tomcat-${TOMCAT_VERSION} ${TOMCAT_HOME}
	
COPY entrypoint.sh ${TOMCAT_HOME}
RUN chmod +x ${TOMCAT_HOME}/entrypoint.sh

EXPOSE 8080

ENTRYPOINT ${TOMCAT_HOME}/entrypoint.sh