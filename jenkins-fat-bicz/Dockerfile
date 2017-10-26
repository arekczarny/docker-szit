FROM jenkins:2.60.3
MAINTAINER Arek Czarny, TT: @arekczarny
ARG MAVEN_VERSION=3.5.0
ARG USER_HOME_DIR="/usr/share/jenkins"
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/${MAVEN_VERSION}/binaries

#I have to do this as calling docker on host with docker client in container needs to be called by sudo
USER root
RUN apt-get update \
      && apt-get install -y sudo \
      && rm -rf /var/lib/apt/lists/*
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers

USER jenkins

#Change docker to be sudo docker as otherwise I will get permission denied and Jenkins calls just docker
RUN echo 'alias docker="sudo docker"' >> ~/.bashrc

#Install maven
RUN sudo mkdir -p /usr/share/jenkins/maven /usr/share/jenkins/maven/ref \
  && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz \
  && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c - \
  && sudo tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/jenkins/maven --strip-components=1 \
  && rm -f /tmp/apache-maven.tar.gz \
  && sudo ln -s /usr/share/jenkins/maven/bin/mvn /usr/bin/mvn

ENV MAVEN_HOME /usr/share/maven
ENV MAVEN_CONFIG "$USER_HOME_DIR/.m2"
#COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
#RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt