############################################################
# OSF SOLR Repo
# A Docker Container Installation of SOLR
############################################################


#Declare CentOS the latest
FROM centos:centos7

Maintainer Andrew J Krug

# UPDATE
RUN yum -y update  

# INSTALL packages 
RUN yum -y install wget
RUN yum -y install tar
RUN yum -y install epel-release
RUN yum -y install pwgen
RUN yum -y install git


# INSTALL JAVA
RUN yum -y install java-1.7.0-openjdk \
lsof \
procps \
curl

ADD hydra-jetty /root/hydra-jetty

EXPOSE 8983

ADD run.sh /run.sh
RUN chmod +x /*.sh

CMD ["/run.sh"]
