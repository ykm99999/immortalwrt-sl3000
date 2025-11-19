FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# 使用清华源
RUN sed -i 's|http://archive.ubuntu.com/ubuntu/|https://mirrors.tuna.tsinghua.edu.cn/ubuntu/|g' /etc/apt/sources.list \
 && sed -i 's|http://security.ubuntu.com/ubuntu/|https://mirrors.tuna.tsinghua.edu.cn/ubuntu/|g' /etc/apt/sources.list

# 更新索引
RUN apt-get update

# 单独安装每个包，便于定位错误
RUN apt-get install -y --no-install-recommends gcc
RUN apt-get install -y --no-install-recommends g++
RUN apt-get install -y --no-install-recommends make
RUN apt-get install -y --no-install-recommends cmake
RUN apt-get install -y --no-install-recommends git
RUN apt-get install -y --no-install-recommends curl
RUN apt-get install -y --no-install-recommends wget

# 清理缓存
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
