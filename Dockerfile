FROM azul/zulu-openjdk:8

MAINTAINER Luis David Barrios (cyberluisda@gmail.com)

ENV CJMX_VERSION 2.6.1
ENV SCALA_VERSION 2.12

RUN mkdir -p /opt/cjmx

# Usseful commands
RUN apt-get update && apt-get install -yf --no-install-recommends curl net-tools netcat ca-certificates openssl && rm -rf /var/lib/apt/lists/*
               
RUN curl -L -o /opt/cjmx/cjmx_${SCALA_VERSION}-${CJMX_VERSION}-app.jar "http://search.maven.org/remotecontent?filepath=com/github/cjmx/cjmx_${SCALA_VERSION}/${CJMX_VERSION}/cjmx_${SCALA_VERSION}-${CJMX_VERSION}-app.jar"

CMD java -cp $JAVA_HOME/lib/tools.jar:/opt/cjmx/cjmx_${SCALA_VERSION}-${CJMX_VERSION}-app.jar cjmx.Main
