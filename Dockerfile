FROM tomcat:9.0-jdk17-temurin

ENV TZ=Asia/Kuala_Lumpur
ENV PORT=8080

RUN rm -rf /usr/local/tomcat/webapps/*
COPY ESMS.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD sed -i "s/port=\"8080\"/port=\"${PORT}\"/" /usr/local/tomcat/conf/server.xml && catalina.sh run
