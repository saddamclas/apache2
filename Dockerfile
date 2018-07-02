FROM ubuntu:16.04
MAINTAINER saiprasad169@gmail.com/sai
       RUN apt-get update -y
       RUN apt-get install vim net-tools openssh-server sudo wget apache2 -y
       RUN apt-get clean
       RUN rm -rf /var/lib/apt/lists/*
       COPY index.html /var/www/html/index.html
       ADD apache2.sh /apache2.sh

       CMD ["/bin/bash","/apache2.sh"]

