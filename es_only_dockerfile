FROM ubuntu:18.04

RUN apt-get update && apt-get install -y wget
RUN apt-get install -y sudo
RUN apt-get install -y vim
RUN apt-get install -y curl
RUN useradd -s /bin/bash -d /home/ubuntu/ -m -G sudo ubuntu
USER ubuntu
WORKDIR /home/ubuntu
RUN wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.6.1-linux-x86_64.tar.gz
RUN tar -xzf elasticsearch-7.6.1-linux-x86_64.tar.gz
WORKDIR elasticsearch-7.6.1/
EXPOSE 9200
CMD echo "OP"
