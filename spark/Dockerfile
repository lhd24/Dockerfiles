FROM haidong/hadoop
MAINTAINER haidong <383623085@qq.com>

# Set environment variables for program versions
ENV SPARK_VERSION 2.1.1
ENV SPARK_HOME /opt/spark

# Download and extract maven to opt folder
RUN curl -L http://mirror.bit.edu.cn/apache/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}.tgz \    
    | tar -zx -C /opt \
    && ln -s /opt/spark-${SPARK_VERSION} ${SPARK_HOME}

# Download and extract spark to opt folder
RUN curl -L http://mirror.bit.edu.cn/apache/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}.tgz \    
    | tar -zx -C /opt \
    && ln -s /opt/spark-${SPARK_VERSION} ${SPARK_HOME}