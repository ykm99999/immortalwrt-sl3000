FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# 使用清华大学镜像源
RUN sed -i 's|http://archive.ubuntu.com/ubuntu/|https://mirrors.tuna.tsinghua.edu.cn/ubuntu/|g' /etc/apt/sources.list \
 && sed -i 's|http://security.ubuntu.com/ubuntu/|https://mirrors.tuna.tsinghua.edu.cn/ubuntu/|g' /etc/apt/sources.list

# 更新索引（加重试机制）
RUN bash -c 'for i in {1..5}; do apt-get update && break || sleep 5; done'

# 安装基础工具（逐步执行）
RUN apt-get install -y --no-install-recommends build-essential || true
RUN apt-get install -y --no-install-recommends cmake || true
RUN apt-get install -y --no-install-recommends git || true
RUN apt-get install -y --no-install-recommends curl || true
RUN apt-get install -y --no-install-recommends wget || true
RUN apt-get install -y --no-install-recommends unzip || true
RUN apt-get install -y --no-install-recommends rsync || true
RUN apt-get install -y --no-install-recommends vim || true

# 清理缓存
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
