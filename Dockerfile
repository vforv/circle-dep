FROM ubuntu:trusty

RUN apt-get -y -qq update

# python3
RUN apt-get -y -qq install python3.4-dev
# bash
RUN apt-get -y -qq install bash
# wget
RUN apt-get -y -qq install wget
# docker
RUN apt-get -y -qq install docker.io
# curl
RUN apt-get -y -qq install curl
# pip
RUN curl -O https://bootstrap.pypa.io/get-pip.py
RUN python3.4 get-pip.py
# aws cli
RUN pip install awscli --upgrade
