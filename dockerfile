From tomcat:9
Maintainer Chetana
ADD hello-world-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps
CMD ["catalina.sh", "run"]
EXPOSE 8080
