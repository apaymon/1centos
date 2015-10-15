#Install WGET
RUN yum install -y wget

 #Install tar
RUN yum install -y tar

 # Download JDK
RUN cd /opt;wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u55-b13/jdk-7u55-linux-x64.tar.gz; pwd 

RUN cd /opt;tar xvf jdk-7u55-linux-x64.tar.gz
RUN alternatives --install /usr/bin/java java /opt/jdk1.7.55/bin/java 2

RUN useradd pentaho
RUN passwd pentaho

ENV JAVA_HOME /opt/jdk1.7.0_55

ENV PENTAHO_JAVA_HOME /opt/jdk1.7.0_55

ENV PENTAHO_INSTALLED_LICENSE_PATH=/home/pentaho/.pentaho/.installedLicenses.xml
