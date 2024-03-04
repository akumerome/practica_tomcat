FROM tomcat:9.0

# Add manager-gui role to tomcat-users.xml
RUN echo '<role rolename="manager-gui"/>' >> /usr/local/tomcat/conf/tomcat-users.xml
RUN echo '<user username="a23alvkumrom" password="20catTom24" roles="manager-gui"/>' >> /usr/local/tomcat/conf/tomcat-users.xml

# Copy your WAR file to the webapps directory in Tomcat
COPY ./sample/* /usr/local/tomcat/webapps/

# docker build -t your-image-name .
# docker run -p 8080:8080 your-image-name

#/usr/local/tomcat/webapps.dist/manager/META-INF/context.xml