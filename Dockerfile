FROM openwrtorg/sdk:23.05.0-x86_64_generic

# 安装额外工具（如 git、curl）
RUN apt-get update && apt-get install -y --no-install-recommends \
    git curl unzip wget ca-certificates \
 && apt-get clean && rm -rf /var/lib/apt/lists/*
