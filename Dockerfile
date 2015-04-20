FROM ubuntu
MAINTAINER William Chan <wchan@shopkeep.com>

RUN apt-get update
RUN apt-get install -y build-essential curl openjdk-7-jdk

ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64

ENV CASSANDRA_VERSION 2.1.4

RUN mkdir -p /opt/downloads && cd /opt/downloads && curl -SsfLO "http://mirror.symnds.com/software/Apache/cassandra/$CASSANDRA_VERSION/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz"
RUN ls -Ra /opt
RUN cd /opt && tar -xvf /opt/downloads/apache-cassandra-$CASSANDRA_VERSION-bin.tar.gz
RUN mv /opt/apache-cassandra-$CASSANDRA_VERSION /opt/cassandra

EXPOSE 9160

CMD ["/opt/cassandra/bin/cassandra", "-f"]