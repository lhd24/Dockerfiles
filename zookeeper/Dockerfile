FROM haidong/java
MAINTAINER haidong <383623085@qq.com>

ARG ZOOKEEPER_VERSION=3.4.10
ARG ZOOKEEPER_HOME=/opt/zookeeper

# Download and extract tomcat to opt folder
RUN curl -L https://mirrors.tuna.tsinghua.edu.cn/apache/zookeeper/zookeeper-${ZOOKEEPER_VERSION}/zookeeper-${ZOOKEEPER_VERSION}.tar.gz \    
    | tar -zx -C /opt \
    && ln -s /opt/zookeeper-${ZOOKEEPER_VERSION} ${ZOOKEEPER_HOME} \
	$$ mkdir ${ZOOKEEPER_HOME}/data \
	$$ echo 1 > ${ZOOKEEPER_HOME}/data/myid
ENV PATH $PATH:{ZOOKEEPER_HOME}/bin	

EXPOSE 8080
CMD ${ZOOKEEPER_HOME}/bin/catalina.sh run