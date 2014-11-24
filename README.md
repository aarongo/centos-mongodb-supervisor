centos-mongodb-supervisor
=========================

Supervisor mongdb
---------------------
The first:
docker pull aarongo/centos-ssh-supervisor
###started mongodb
    docker run -p 2222:22 -p 27017:27017 -p 28017:28017 -it -v /data/db:/data/db aarongo/centos-mongodb-supervisor
