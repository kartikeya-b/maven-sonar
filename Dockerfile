FROM tomcat:8.5.13-jre8-alpine
MAINTAINER Ponnusamy<pananthasankaranarayanan@sapient.com>

WORKDIR /usr/local/tomcat
ADD http://10.150.19.24:9003/nexus/content/repositories/releases/sm-shop-2.0.5.war /usr/local/tomcat/webapps/
COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
RUN rm -rf /usr/local/tomcat/webapps/ROOT && \
    mkdir -p /usr/local/tomcat/webapps/ROOT && \ 
	cd /usr/local/tomcat/webapps/ROOT && \
	unzip /usr/local/tomcat/webapps/sm-shop-2.0.5.war  && \
	rm -rf /usr/local/tomcat/webapps/sm-shop-2.0.5.war 
EXPOSE 9055
