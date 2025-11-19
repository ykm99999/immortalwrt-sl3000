FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# 使用清华源加速
RUN sed -i 's|http://archive.ubuntu.com/ubuntu/|https://mirrors.tuna.tsinghua.edu.cn/ubuntu/|g' /etc/apt/sources.list \
 && sed -i 's|http://security.ubuntu.com/ubuntu/|https://mirrors.tuna.tsinghua.edu.cn/ubuntu/|g' /etc/apt/sources.list

# 安装必要工具
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential clang curl wget git unzip python3 python3-pip \
    ca-certificates libncurses5-dev zlib1g-dev gawk flex gettext \
    libssl-dev xsltproc rsync file \
 && apt-get clean && rm -rf /var/lib/apt/lists/*

# 创建工作目录
WORKDIR /sdk
