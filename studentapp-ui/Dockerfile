FROM ubuntu
RUN apt update && apt install openjdk-11-jre-headless -y
ADD https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.100/bin/apache-tomcat-8.5.100.tar.gz /opt
WORKDIR /opt
RUN tar -xvzf apache-tomcat-8.5.100.tar.gz -C /opt
WORKDIR /opt/apache-tomcat-8.5.100/bin
ADD https://s3-us-west-2.amazonaws.com/studentapi-cit/student.war /opt/apache-tomcat-8.5.100/webapps/
ADD https://s3-us-west-2.amazonaws.com/studentapi-cit/mysql-connector.jar /opt/apache-tomcat-8.5.100/lib/
COPY context.xml /opt/apache-tomcat-8.5.100/conf/context.xml
EXPOSE 8080
CMD [ "./catalina.sh" , "run" ]
