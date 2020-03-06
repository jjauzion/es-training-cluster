FROM ubuntu:18.04

RUN  apt-get update && apt-get install -y wget
RUN wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.6.1-linux-x86_64.tar.gz
RUN tar -xzf elasticsearch-7.6.1-linux-x86_64.tar.gz
WORKDIR elasticsearch-7.6.1/
CMD echo "OP"
