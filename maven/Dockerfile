FROM haidong/docker-java
MAINTAINER haidong <383623085@qq.com>

ENV NEXUS_VERSION=2.12.0-01
ENV NEXUS_HOME=/opt/nexus

# Download and extract jdk to opt folder
RUN mkdir ${NEXUS_HOME} \
	&& curl -L http://download.sonatype.com/nexus/oss/nexus-${NEXUS_VERSION}-bundle.tar.gz \ 
    | tar -zx -C ${NEXUS_HOME} \
    && sed -i '/application-port/s/[0-9].*$/9091/g' ${NEXUS_HOME}/nexus-${NEXUS_VERSION}/conf/nexus.properties \
	&& sed -i '/RUN_AS_USER/s/#//g' ${NEXUS_HOME}/nexus-${NEXUS_VERSION}/bin/nexus \
    && sed -i '/RUN_AS_USER/s/=/=root/g' ${NEXUS_HOME}/nexus-${NEXUS_VERSION}/bin/nexus

COPY entrypoint.sh ${NEXUS_HOME}
RUN chmod +x ${NEXUS_HOME}/entrypoint.sh

EXPOSE 9091

# CMD ${NEXUS_HOME}/nexus-${NEXUS_VERSION}/bin/nexus console 

ENTRYPOINT ${NEXUS_HOME}/entrypoint.sh