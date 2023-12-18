FROM rockylinux:9.2.20230513

MAINTAINER "vishnush.1709@gmail.com"

RUN  yum install vim wget unzip bind-utils net-tools java-11-devel -y

COPY Dockerfile /root/

ADD ./apache-tomcat-10.1.17.tar.gz /opt/

WORKDIR  /opt/apache-tomcat-10.1.17.tar.gz/bin/

EXPOSE 8080 8085 8081 443 80

CMD ["/opt/apache-tomcat-10.1.17/bin/catalina.sh","run"]
~                                                         
