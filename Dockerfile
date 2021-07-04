FROM docker.io/ashish1981/s390x-rhcl
MAINTAINER ashissah@in.ibm.com
ENV JAVA_VERSON 1.8.0
ENV MAVEN_VERSION 3.3.9
RUN yum -y update \
    && yum install -y wget curl git
RUN wget -q https://raw.githubusercontent.com/linux-on-ibm-z/scripts/master/Kibana/7.12.1/build_kibana.sh

RUN bash build_kibana.sh
