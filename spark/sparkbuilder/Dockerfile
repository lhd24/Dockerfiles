FROM haidong/hadoop
MAINTAINER haidong <383623085@qq.com>

# Download and extract maven to opt folder
ARG MAVEN_VERSION=3.5.0
ARG USER_HOME_DIR="/root"
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
ARG BASE_URL=http://mirrors.tuna.tsinghua.edu.cn/apache/maven/maven-3/${MAVEN_VERSION}/binaries

ENV MAVEN_HOME /opt/maven
ENV MAVEN_CONFIG "$USER_HOME_DIR/.m2"
ENV PATH $PATH:$MAVEN_HOME/bin

RUN mkdir -p ${MAVEN_HOME} \
  && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz \
  && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c - \
  && tar -xzf /tmp/apache-maven.tar.gz -C ${MAVEN_HOME} --strip-components=1 \
  && rm -f /tmp/apache-maven.tar.gz 

COPY settings.xml  ${MAVEN_HOME}/conf/

VOLUME "$USER_HOME_DIR/.m2"

# Download and extract spark to opt folder
ARG SPARK_VERSION=2.1.1
ENV SPARK_HOME /opt/spark
ENV PATH $PATH:$SPARK_HOME/bin

RUN curl -L http://mirror.bit.edu.cn/apache/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}.tgz \    
    | tar -zx -C /opt \
    && ln -s /opt/spark-${SPARK_VERSION} ${SPARK_HOME}

WORKDIR ${SPARK_HOME}

RUN mvn -Pyarn -Phadoop-2.7 -Dhadoop.version=2.7.1 -DskipTests clean package