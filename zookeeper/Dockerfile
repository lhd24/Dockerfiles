FROM haidong/ssh_cluster
MAINTAINER haidong <383623085@qq.com>

ARG ZOOKEEPER_VERSION=3.4.10
ENV ZOOKEEPER_HOME=/opt/zookeeper

ENV PATH $PATH:${ZOOKEEPER_HOME}/bin	

RUN curl -L https://mirrors.tuna.tsinghua.edu.cn/apache/zookeeper/zookeeper-${ZOOKEEPER_VERSION}/zookeeper-${ZOOKEEPER_VERSION}.tar.gz \    
    | tar -zx -C /opt \
    && ln -s /opt/zookeeper-${ZOOKEEPER_VERSION} ${ZOOKEEPER_HOME}

COPY entrypoint.sh ${ZOOKEEPER_HOME}
RUN chmod +x ${ZOOKEEPER_HOME}/entrypoint.sh

EXPOSE 2181 2888 3888

VOLUME /var/zookeeper

ENTRYPOINT ["/opt/zookeeper/entrypoint.sh"]

CMD zkServer.sh start-foreground