# Use a lightweight Tomcat server
FROM tomcat:9.0-jdk11-openjdk

# Remove default Tomcat apps to keep it clean
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your built WAR file to the ROOT of the server
# Note: You must ensure your WAR file name matches this. 
# NetBeans usually builds to 'dist/MP4_proj.war' or similar.
COPY dist/MP4_proj.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
