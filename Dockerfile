FROM ubuntu:18.04

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y wget
RUN apt-get install -y default-jdk
RUN apt-get install -y sudo
RUN apt-get install -y vim
RUN apt-get install -y curl
RUN useradd -s /bin/bash -d /home/ubuntu/ -m -G sudo ubuntu
USER ubuntu
WORKDIR /home/ubuntu
# RUN wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.6.1-linux-x86_64.tar.gz
COPY --chown=ubuntu:ubuntu elasticsearch-7.6.1-linux-x86_64.tar.gz .
RUN tar -xzf elasticsearch-7.6.1-linux-x86_64.tar.gz
RUN mkdir /home/ubuntu/elasticsearch-7.6.1/data
# RUN curl -O https://artifacts.elastic.co/downloads/kibana/kibana-7.6.1-linux-x86_64.tar.gz
COPY --chown=ubuntu:ubuntu kibana-7.6.1-linux-x86_64.tar.gz .
RUN tar -xzf kibana-7.6.1-linux-x86_64.tar.gz
COPY --chown=ubuntu:ubuntu logstash-7.6.1.tar.gz .
COPY --chown=ubuntu:ubuntu filebeat-7.6.1-linux-x86_64.tar.gz .
COPY --chown=ubuntu:ubuntu Engineer1/dataset ./datasets
RUN mkdir /home/ubuntu/shared_folder
EXPOSE 9200
EXPOSE 5601
