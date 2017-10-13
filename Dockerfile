FROM ubuntu:trusty

RUN apt-get -y -qq update

RUN apt-get install -y build-essential make automake gcc g++ cpp libkrb5-dev libc6-dev man-db autoconf pkg-config

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
