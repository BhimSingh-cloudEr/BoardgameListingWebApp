####################----INSTALL TOMCAT----####################
sudo su
cd /opt
sudo wget https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.65/bin/apache-tomcat-9.0.65.tar.gz
sudo tar -xvf apache-tomcat-9.0.65.tar.gz

cd /opt/apache-tomcat-9.0.65/conf
sudo vi tomcat-users.xml
# Add below line at the end (2nd-last line)
<user username="admin" password="admin1234" roles="admin-gui, manager-gui, manager-script"/>

sudo ln -s /opt/apache-tomcat-9.0.65/bin/startup.sh /usr/bin/startTomcat
sudo ln -s /opt/apache-tomcat-9.0.65/bin/shutdown.sh /usr/bin/stopTomcat

sudo vi /opt/apache-tomcat-9.0.65/webapps/manager/META-INF/context.xml
# Comment out RemoteAddrValve
<!-- Valve className="org.apache.catalina.valves.RemoteAddrValve" allow="127.\d+.\d+.\d+.\d+|::1|0:0:0:0:0:0:0:1" -->

sudo vi /opt/apache-tomcat-9.0.65/webapps/host-manager/META-INF/context.xml
# Comment out RemoteAddrValve
<!-- Valve className="org.apache.catalina.valves.RemoteAddrValve" allow="127.\d+.\d+.\d+.\d+|::1|0:0:0:0:0:0:0:1" -->

sudo stopTomcat
sudo startTomcat
