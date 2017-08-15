FROM haidong/hadoop
MAINTAINER haidong <383623085@qq.com>

ARG HIVE_VERSION=1.2.2

ENV HIVE_HOME=/opt/hive
ENV PATH $PATH:$HIVE_HOME/bin

RUN curl -L https://mirrors.tuna.tsinghua.edu.cn/apache/hive/hive-${HIVE_VERSION}/apache-hive-${HIVE_VERSION}-bin.tar.gz \ 
    | tar -zx -C /opt \
    && ln -s /opt/apache-hive-${HIVE_VERSION}-bin ${HIVE_HOME}

COPY conf  ${HIVE_HOME}/conf/