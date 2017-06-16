# https://github.com/sonatype/docker-nexus	oss
FROM haidong/docker-java
MAINTAINER haidong <383623085@qq.com>

ENV NEXUS_VERSION=2.12.0-01 \
	NEXUS_HOME=/opt/sonatype/nexus \
	SONATYPE_WORK=/sonatype-work

# Download and extract nexus to opt folder
# sed -i '/application-port/s/[0-9].*$/9091/g' ${NEXUS_HOME}/nexus-${NEXUS_VERSION}/conf/nexus.properties 
RUN mkdir -p ${NEXUS_HOME} \
	&& curl -L http://download.sonatype.com/nexus/oss/nexus-${NEXUS_VERSION}-bundle.tar.gz \ 
    | tar -zx -C /tmp nexus-${NEXUS_VERSION} \
	&& mv /tmp/nexus-${NEXUS_VERSION}/* ${NEXUS_HOME} \
	&& rm -rf /tmp/nexus-${NEXUS_VERSION}

RUN useradd -r -u 200 -m -c "nexus role account" -d ${SONATYPE_WORK} -s /bin/false nexus

VOLUME ${SONATYPE_WORK}

EXPOSE 8081

WORKDIR ${NEXUS_HOME}
USER nexus
ENV CONTEXT_PATH /nexus
ENV MAX_HEAP 768m
ENV MIN_HEAP 256m
ENV JAVA_OPTS -server -Djava.net.preferIPv4Stack=true
ENV LAUNCHER_CONF ./conf/jetty.xml ./conf/jetty-requestlog.xml
CMD ${JAVA_HOME}/bin/java \
  -Dnexus-work=${SONATYPE_WORK} -Dnexus-webapp-context-path=${CONTEXT_PATH} \
  -Xms${MIN_HEAP} -Xmx${MAX_HEAP} \
  -cp 'conf/:lib/*' \
  ${JAVA_OPTS} \
  org.sonatype.nexus.bootstrap.Launcher ${LAUNCHER_CONF}