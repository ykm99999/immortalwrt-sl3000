FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# 使用阿里云源（更稳定）
RUN sed -i 's|http://.*.ubuntu.com|http://mirrors.aliyun.com|g' /etc/apt/sources.list

# 更新索引并安装依赖
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential clang curl wget git unzip python3 python3-pip \
    ca-certificates libncurses5-dev zlib1g-dev gawk flex gettext \
    libssl-dev xsltproc rsync file \
 && apt-get clean && rm -rf /var/lib/apt/lists/*
