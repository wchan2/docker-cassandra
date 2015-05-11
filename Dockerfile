FROM ubuntu
MAINTAINER William Chan <wchan@shopkeep.com>

RUN apt-get update && apt-get install -y build-essential openjdk-7-jdk

ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64

RUN mkdir -p /opt/downloads

WORKDIR /opt/downloads

ADD http://mirror.symnds.com/software/Apache/cassandra/2.1.4/apache-cassandra-2.1.4-bin.tar.gz /opt/downloads/
RUN tar -xvf /opt/downloads/apache-cassandra-2.1.4-bin.tar.gz -C /opt/

RUN mv /opt/apache-cassandra-2.1.4 /opt/cassandra
COPY conf/cassandra.yaml /opt/cassandra/conf/

EXPOSE 7199 7000 7001 9160 9042

CMD ["/opt/cassandra/bin/cassandra", "-f"]