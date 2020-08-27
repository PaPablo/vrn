# Set the base image
FROM ubuntu:16.04
# Dockerfile author / maintainer 
MAINTAINER Pablo Toledo Margalef <pabloatm980@gmail.com>


#Run installation
RUN apt-get update -qy

RUN apt-get install -qy git vim sudo wget man gawk libgoogle-glog-dev libboost-all-dev python-numpy python-matplotlib cmake build-essential
RUN mkdir -p ~/pip/
RUN wget -O ~/pip/install.py https://bootstrap.pypa.io/get-pip.py
RUN python ~/pip/install.py
RUN rm -r ~/pip
RUN pip install visvis imageio==1 dlib

RUN git clone https://github.com/nagadomi/distro.git ~/torch --recursive
RUN git clone https://github.com/1adrianb/thpp.git ~/thpp
RUN git clone https://github.com/facebook/fblualib.git ~/fblualib
RUN git clone --recursive https://github.com/papablo/vrn ~/vrn

#Add installation script
COPY installation.sh /root/installation.sh

RUN bash /root/installation.sh
