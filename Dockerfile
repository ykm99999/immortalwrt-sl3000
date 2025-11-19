FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

# 启用 universe 仓库并安装 Python 2.7（使用 python2.7 而非 python2）
RUN apt-get update && apt-get install -y --no-install-recommends \
    software-properties-common \
    && add-apt-repository universe \
    && apt-get update && apt-get install -y --no-install-recommends \
    python2-minimal ca-certificates curl \
    && curl -sS https://bootstrap.pypa.io/pip/2.7/get-pip.py -o get-pip.py \
    && python2.7 get-pip.py \
    && rm -f get-pip.py \
    && apt-get purge -y software-properties-common \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# 安装其他构建工具和依赖（无推荐包 + 清理缓存）
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential cmake git curl wget unzip rsync vim \
    autoconf automake autopoint bison flex gawk gettext pkgconf \
    libtool texinfo intltool help2man \
    zlib1g-dev libssl-dev libreadline-dev libncurses5-dev libncursesw5-dev \
    libelf-dev libfuse-dev libglib2.0-dev libgmp-dev libmpc-dev libmpfr-dev \
    python3 python3-pip python3-setuptools python3-pyelftools \
    clang llvm lld lldb libclang-dev libllvm-dev liblldb-dev \
    ccache ninja-build scons swig qemu-utils squashfs-tools \
    bzip2 p7zip-full zip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
