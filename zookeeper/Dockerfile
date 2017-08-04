FROM haidong/java
MAINTAINER haidong <383623085@qq.com>

ARG ZOOKEEPER_VERSION=3.4.10
ARG ZOOKEEPER_HOME=/opt/zookeeper
ARG ZOOKEEPER_DATA=/var/lib/zookeeper

ENV myid 1

RUN curl -L https://mirrors.tuna.tsinghua.edu.cn/apache/zookeeper/zookeeper-${ZOOKEEPER_VERSION}/zookeeper-${ZOOKEEPER_VERSION}.tar.gz \    
    | tar -zx -C /opt \
    && ln -s /opt/zookeeper-${ZOOKEEPER_VERSION} ${ZOOKEEPER_HOME} \
	$$ mkdir -p ${ZOOKEEPER_DATA} \
	$$ echo $env:myid > ${ZOOKEEPER_DATA}/myid

COPY conf  ${ZOOKEEPER_HOME}/conf/

ENV PATH $PATH:{ZOOKEEPER_HOME}/bin	

EXPOSE 2181 2888 3888

CMD zkServer.sh start