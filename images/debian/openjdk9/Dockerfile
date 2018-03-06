FROM buildpack-deps:trusty-curl
USER root


RUN apt-get install -y wget && \
    groupadd -r openwhisk -g 1001 && \
    useradd -u 1001 -r -g openwhisk -m -s /sbin/nologin -c "App User" openwhisk


RUN mkdir -p /app/data && \
  chmod 1777 /app/data

ENV JAVA_APP_DIR=/app \
  JAVA_DATA_DIR=/app/data

RUN cd /tmp && \
    wget --quiet https://github.com/AdoptOpenJDK/openjdk9-openj9-releases/releases/download/jdk-9%2B181/OpenJDK9-OPENJ9_x64_Linux_jdk-9.181.tar.gz && \
    sha256sum OpenJDK9-OPENJ9_x64_Linux_jdk-9.181.tar.gz && \
    mkdir -p /opt/openjdk-1.9.0 && \
    tar --strip-components=2 -xf /tmp/OpenJDK9-OPENJ9_x64_Linux_jdk-9.181.tar.gz -C /opt/openjdk-1.9.0

ENV JAVA_HOME=/opt/openjdk-1.9.0
# Add run script as /app/run-java.sh and make it executable
COPY run-java.sh /app/
RUN chmod 755 /app/run-java.sh



# Run under user "openwhisk"
RUN chown -R openwhisk /app
USER openwhisk


ENV PATH=$JAVA_HOME/bin:$PATH

WORKDIR /app

CMD [ "/app/run-java.sh" ]
