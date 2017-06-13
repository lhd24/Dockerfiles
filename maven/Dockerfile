FROM haidong/docker-tomcat
MAINTAINER haidong <383623085@qq.com>

ENV NEXUS_VERSION=2.12.0-01

# Download and extract jdk to opt folder
RUN curl -L http://download.sonatype.com/nexus/oss/nexus-${NEXUS_VERSION}-bundle.tar.gz \ 
    | tar -zx -C ${TOMCAT_HOME}/webapps \
    && mv ${TOMCAT_HOME}/webapps/nexus-${NEXUS_VERSION} ${TOMCAT_HOME}/webapps/nexus
	
EXPOSE 8080