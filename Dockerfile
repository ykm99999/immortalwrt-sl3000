# 使用 Ubuntu 20.04 作为基础镜像
FROM ubuntu:20.04

# 避免交互式安装提示
ENV DEBIAN_FRONTEND=noninteractive

# 启用 universe 仓库并安装 Python 2.7
RUN apt-get update && apt-get install -y software-properties-common \
    && add-apt-repository universe \
    && apt-get update && apt-get install -y \
    python2-minimal \
    && curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py \
    && python2 get-pip.py \
    && rm -rf /var/lib/apt/lists/*

# 安装其他构建工具和依赖
RUN apt-get update && apt-get install -y \
    # 基础工具
    build-essential cmake git curl wget vim unzip rsync \
    # 编译相关工具
    autoconf automake autopoint bison flex gawk gettext pkgconf \
    libtool texinfo intltool help2man \
    # 常用库
    zlib1g-dev libssl-dev libreadline-dev libncurses5-dev libncursesw5-dev \
    libelf-dev libfuse-dev libglib2.0-dev libgmp-dev libmpc-dev libmpfr-dev \
    # Python 3 支持
    python3 python3-pip python3-setuptools python3-pyelftools \
    # LLVM/Clang 工具链（默认版本为 LLVM 10）
    clang llvm lld lldb libclang-dev libllvm-dev liblldb-dev \
    # 其他工具
    ccache ninja-build scons swig qemu-utils squashfs-tools \
    bzip2 p7zip-full zip \
    && rm -rf /var/lib/apt/lists/*
