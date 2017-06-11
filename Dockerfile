FROM cyberluisda/openjdk:8

MAINTAINER Luis David Barrios (cyberluisda@gmail.com)

ENV CJMX_VERSION 2.6.1
ENV SCALA_VERSION 2.12

RUN mkdir -p /opt/cjmx

RUN curl -L -o /opt/cjmx/cjmx_${SCALA_VERSION}-${CJMX_VERSION}-app.jar "http://search.maven.org/remotecontent?filepath=com/github/cjmx/cjmx_${SCALA_VERSION}/${CJMX_VERSION}/cjmx_${SCALA_VERSION}-${CJMX_VERSION}-app.jar"

COPY files/entry-point.sh /
RUN chmod a+x /entry-point.sh

ENTRYPOINT /entry-point.sh

