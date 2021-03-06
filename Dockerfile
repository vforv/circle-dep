FROM ubuntu:latest

RUN apt-get -y -qq update

RUN apt-get install -y -qq build-essential make automake gcc g++ cpp libkrb5-dev libc6-dev man-db autoconf pkg-config

# xz-utils
RUN apt-get -y -qq install xz-utils
# zip
RUN apt-get -y -qq install zip
# git
RUN apt-get -y -qq install git
# python3
RUN apt-get update && apt-get install -y -qq \
    python \
    python-setuptools \
    python-pip
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
# aws cli
RUN pip install awscli --upgrade

# node and npm
RUN wget -O /node-v6.11.3-linux-x64.tar.xz "https://nodejs.org/dist/v6.11.3/node-v6.11.3-linux-x64.tar.xz"
RUN tar xf /node-v6.11.3-linux-x64.tar.xz
RUN rm -rf /node-v6.11.3-linux-x64.tar.xz
RUN mv /node-v6.11.3-linux-x64 /node
RUN ln -s /node/bin/node /usr/bin/node
RUN ln -s /node/bin/npm /usr/bin/npm
RUN npm install --unsafe-perm -g node-pre-gyp
