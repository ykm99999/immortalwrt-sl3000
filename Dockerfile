FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN sed -i 's|http://.*.ubuntu.com|http://mirrors.aliyun.com|g' /etc/apt/sources.list \
 && apt-get update && apt-get install -y --no-install-recommends \
    build-essential clang curl wget git unzip python3 python3-pip python3-distutils \
    ca-certificates libncurses5-dev zlib1g-dev gawk flex gettext \
    libssl-dev xsltproc rsync file swig \
 && apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /builder
