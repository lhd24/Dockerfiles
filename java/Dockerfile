FROM ubuntu
MAINTAINER haidong <383623085@qq.com>

# Set environment variables for program versions
ARG JDK_VERSION=8
ARG JDK_UPDATE=131
ARG JDK_BUILD=b11
ARG JDK_DISTRO_ARCH=linux-x64
ARG JDK_URL_HASH=d54c1d3a095b4ff2b6607d096fa80163

ARG JDK_FOLDER=jdk1.$JDK_VERSION.0_$JDK_UPDATE
ARG JDK_VERSION_UPDATE=$JDK_VERSION'u'$JDK_UPDATE
ARG JDK_VERSION_UPDATE_BUILD=$JDK_VERSION_UPDATE'-'$JDK_BUILD
ARG JDK_VERSION_UPDATE_DISTRO_ARCH=$JDK_VERSION_UPDATE'-'$JDK_DISTRO_ARCH

ENV JAVA_HOME=/opt/java
ENV PATH $PATH:$JAVA_HOME/bin

# Change to tmp folder
WORKDIR /tmp

RUN apt-get update && \
    apt-get install -y curl

# Download and extract jdk to opt folder
RUN curl -LH "Cookie: oraclelicense=accept-securebackup-cookie" \
       http://download.oracle.com/otn-pub/java/jdk/${JDK_VERSION_UPDATE_BUILD}/${JDK_URL_HASH}/jdk-${JDK_VERSION_UPDATE_DISTRO_ARCH}.tar.gz \    
    | tar -zx -C /opt \
    && ln -s /opt/${JDK_FOLDER} ${JAVA_HOME}
	
# Change to root folder
WORKDIR /root