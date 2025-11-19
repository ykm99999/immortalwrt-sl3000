FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# 使用清华大学镜像源
RUN sed -i 's|http://archive.ubuntu.com/ubuntu/|https://mirrors.tuna.tsinghua.edu.cn/ubuntu/|g' /etc/apt/sources.list \
 && sed -i 's|http://security.ubuntu.com/ubuntu/|https://mirrors.tuna.tsinghua.edu.cn/ubuntu/|g' /etc/apt/sources.list

# 更新并安装基础工具
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential cmake git curl wget unzip rsync vim \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# 安装编译工具
RUN apt-get update && apt-get install -y --no-install-recommends \
    autoconf automake autopoint bison flex gawk gettext pkgconf \
    libtool texinfo intltool help2man \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# 安装常用库
RUN apt-get update && apt-get install -y --no-install-recommends \
    zlib1g-dev libssl-dev libreadline-dev libncurses5-dev libncursesw5-dev \
    libelf-dev libfuse-dev libglib2.0-dev libgmp-dev libmpc-dev libmpfr-dev \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# 安装 Python3 和工具链
RUN apt-get update && apt-get install -y --no-install-recommends \
    python3 python3-pip python3-setuptools python3-pyelftools \
    clang llvm lld lldb libclang-dev libllvm-dev liblldb-dev \
    ccache ninja-build scons swig qemu-utils squashfs-tools \
    bzip2 p7zip-full zip \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
