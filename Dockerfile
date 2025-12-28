# CHANGED: Using JDK 17 to fix the cgroup/Linux crash
FROM tomcat:9.0-jdk17-openjdk

# Remove default Tomcat apps to keep it clean
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your built WAR file to the ROOT of the server
COPY dist/MP4_proj.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]