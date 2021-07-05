FROM docker.io/ubuntu:latest
MAINTAINER ashissah@in.ibm.com
ENV JAVA_VERSON 1.8.0
ENV MAVEN_VERSION 3.3.9
RUN apt -y update \
    && apt install -y wget curl git sudo
RUN cd ~/ && \
    wget -q https://raw.githubusercontent.com/linux-on-ibm-z/scripts/master/Kibana/7.12.1/build_kibana.sh \
    && chmod 775 ~/build_kibana.sh
RUN cd ~/ && echo y|./build_kibana.sh