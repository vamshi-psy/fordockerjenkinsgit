# Pull base image 
From tomcat:8-jre8 
RUN sed -i 's/port="8080"/port="4287"/' ${CATALINA_HOME}/conf/server.xml
COPY webapp/target/webapp.war /usr/local/tomcat/webapps
CMD ["catalina.sh", "run"]

