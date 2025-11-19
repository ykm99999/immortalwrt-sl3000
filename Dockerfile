FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# 使用清华源
RUN sed -i 's|http://archive.ubuntu.com/ubuntu/|https://mirrors.tuna.tsinghua.edu.cn/ubuntu/|g' /etc/apt/sources.list \
 && sed -i 's|http://security.ubuntu.com/ubuntu/|https://mirrors.tuna.tsinghua.edu.cn/ubuntu/|g' /etc/apt/sources.list

# 更新索引
RUN apt-get update

# 单独安装每个包，逐步定位错误
RUN echo "🔧 安装 build-essential" && apt-get install -y build-essential
RUN echo "🔧 安装 clang" && apt-get install -y clang
RUN echo "🔧 安装 curl" && apt-get install -y curl
RUN echo "🔧 安装 wget" && apt-get install -y wget
RUN echo "🔧 安装 git" && apt-get install -y git
RUN echo "🔧 安装 unzip" && apt-get install -y unzip
RUN echo "🔧 安装 python3" && apt-get install -y python3
RUN echo "🔧 安装 python3-pip" && apt-get install -y python3-pip
RUN echo "🔧 安装 ca-certificates" && apt-get install -y ca-certificates
RUN echo "🔧 安装 libncurses5-dev" && apt-get install -y libncurses5-dev
RUN echo "🔧 安装 zlib1g-dev" && apt-get install -y zlib1g-dev
RUN echo "🔧 安装 gawk" && apt-get install -y gawk
RUN echo "🔧 安装 flex" && apt-get install -y flex
RUN echo "🔧 安装 gettext" && apt-get install -y gettext
RUN echo "🔧 安装 libssl-dev" && apt-get install -y libssl-dev
RUN echo "🔧 安装 xsltproc" && apt-get install -y xsltproc
RUN echo "🔧 安装 rsync" && apt-get install -y rsync
RUN echo "🔧 安装 file" && apt-get install -y file

# 清理缓存
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
