FROM tomcat:9.0-jdk21

# 기본 ROOT 앱 제거
RUN rm -rf /usr/local/tomcat/webapps/*

# WAR 배포 (ROOT context)
COPY gamjas.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
