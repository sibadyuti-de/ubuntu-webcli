FROM ubuntu
MAINTAINER sibadyutide1@gmail.com
RUN apt-get update -y &&\
    apt-get upgrade -y &&\
    apt-get install apt-utils net-tools -y &&\
    apt-get install  curl build-essential -y &&\
    curl -sL https://deb.nodesource.com/setup_14.x |  bash - &&\
    rm -rf ~/.node-gyp &&\ 
    apt-get install nodejs -y &&\
    npm install --global yarn -y &&\
    yarn global add wetty &&\
    apt-get install sudo vim sshpass -y &&\
    apt-get install  -y &&\
    useradd -d /home/ubuntu -m -s /bin/bash ubuntu &&\
    echo 'ubuntu:1234' | chpasswd &&\
    adduser ubuntu sudo
EXPOSE 3000 22
CMD /usr/local/bin/wetty -b --title "ubuntu terminal"  -p 3000 -DFOREGROUND
