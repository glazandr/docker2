FROM centos:7

ARG JMETER_VERSION="5.4.3"
ENV JMETER_HOME /opt/apache-jmeter-5.4.3
ENV JMETER_BIN  /opt/apache-jmeter-5.4.3/bin
ENV JMETER_DOWNLOAD_URL  https://archive.apache.org/dist/jmeter/binaries/apache-jmeter-5.4.3.tgz
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk/jre

WORKDIR /opt/apache-jmeter-5.4.3

ARG TZ="Europe/Amsterdam"
RUN yum update -y
RUN yum install java-1.8.0-openjdk java-1.8.0-openjdk-devel -y
RUN yum install wget -y
RUN wget https://dlcdn.apache.org//jmeter/binaries/apache-jmeter-5.4.3.tgz
RUN tar -xzf apache-jmeter-5.4.3.tgz 
RUN mv apache-jmeter-5.4.3/* /opt/apache-jmeter-5.4.3
RUN rm -r /opt/apache-jmeter-5.4.3/apache-jmeter-5.4.3

RUN mkdir code/

ENTRYPOINT ["/opt/apache-jmeter-5.2.1/code/entry.sh"]
