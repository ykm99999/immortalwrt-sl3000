FROM debian:bullseye

ENV DEBIAN_FRONTEND=noninteractive

# 使用清华源（适用于 Debian）
RUN sed -i 's|http://deb.debian.org|https://mirrors.tuna.tsinghua.edu.cn|g' /etc/apt/sources.list

# 更新索引
RUN apt-get update

# 安装核心构建工具（替代 build-essential）
RUN apt-get install -y --no-install-recommends \
    gcc g++ make cmake git curl wget unzip rsync vim \
    autoconf automake autopoint bison flex gawk gettext pkgconf \
    libtool texinfo intltool help2man \
    zlib1g-dev libssl-dev libreadline-dev libncurses5-dev libncursesw5-dev \
    libelf-dev libfuse-dev libglib2.0-dev libgmp-dev libmpc-dev libmpfr-dev \
    python3 python3-pip python3-setuptools python3-pyelftools \
    clang llvm lld lldb libclang-dev libllvm-dev liblldb-dev \
    ccache ninja-build scons swig qemu-utils squashfs-tools \
    bzip2 p7zip-full zip \
 && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
