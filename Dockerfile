# 使用 Ubuntu 20.04 作为基础镜像
FROM ubuntu:20.04

# 避免交互式安装
ENV DEBIAN_FRONTEND=noninteractive

# 更新并安装依赖
RUN apt-get update && apt-get install -y \
    # 基础工具
    build-essential cmake git curl wget vim unzip rsync \
    # 编译相关工具
    autoconf automake autopoint bison flex gawk gettext pkgconf \
    libtool texinfo intltool help2man \
    # 常用库
    zlib1g-dev libssl-dev libreadline-dev libncurses5-dev libncursesw5-dev \
    libelf-dev libfuse-dev libglib2.0-dev libgmp-dev libmpc-dev libmpfr-dev \
    # Python2 & Python3 支持
    python2.7 python3 python3-pip python3-setuptools python3-pyelftools \
    # Clang/LLVM（Ubuntu 20.04 默认支持 LLVM 10）
    clang llvm lld lldb libclang-dev libllvm-dev liblldb-dev \
    # 其他工具
    ccache ninja-build scons swig qemu-utils squashfs-tools \
    # 压缩/打包工具
    bzip2 p7zip-full zip \
    # 网络工具
    curl wget \
    && rm -rf /var/lib/apt/lists/*
