FROM tomcat:10.1-jre17

RUN useradd -m -s /bin/bash gagan

WORKDIR /usr/local/tomcat/webapps

COPY target/*.war ./ROOT.war

RUN chown -R gagan:gagan /usr/local/tomcat/webapps

USER gagan

EXPOSE 8080

CMD ["catalina.sh", "run"]
