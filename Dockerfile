FROM aarongo/centos-ssh-supervisor:latest
MAINTAINER  aaron "aaron.docker@gmail.com"


#Install mongodb
RUN yum -y install wget && yum -y install tar &&\ 
	wget http://downloads.mongodb.org/linux/mongodb-linux-x86_64-2.6.4.tgz &&\
	tar xzvf mongodb-linux-x86_64-2.6.4.tgz &&\
	mv  mongodb-linux-x86_64-2.6.4/ /mongodb &&\
	mkdir -p /data/db
COPY supervisord.conf /etc/supervisord.conf

VOLUME ["/data/db"]

EXPOSE 22 27017 28017
CMD ["/usr/bin/supervisord"]

