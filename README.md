# 司络 SL-3000 EMMC 固件说明

## 📦 固件版本概述
- **基线系统**：ImmortalWrt 24.10  
- **内核版本**：Linux 6.6  
- **目标设备**：司络 SL-3000（MT7981 芯片，EMMC 存储）  
- **构建特点**：
  - 移除所有旧依赖包（如 `libcrypt-compat`、`libpcre`、`python3-light` 等），避免编译失败
  - 保留常用功能：Docker、Passwall2、TurboACC、Cloudflared、LuCI 中文界面
  - 适合家庭和中小型网络环境，兼顾易用性和性能

---

## 🔑 软件包功能介绍

### 🖥️ 系统与管理
- **LuCI Web 界面**：图形化管理界面，支持中文翻译  
- **基础工具**：`bash`、`curl`、`wget`、`coreutils`  
- **防火墙管理**：`luci-app-firewall`，可视化配置防火墙规则  

### 🐳 Docker 支持
- **luci-app-docker**：在 LuCI 界面管理 Docker 容器  
- **dockerd / containerd**：完整的容器运行环境  
- **文件系统支持**：ext4、btrfs、xfs，支持挂载外部存储运行容器  

### 🌐 网络代理与加速
- **Passwall2**：多协议代理工具，支持 V2Ray、Xray、Sing-box、TUIC 等后端  
- **透明代理工具**：`dns2socks`、`ipt2socks`、`pdnsd-alt`、`chinadns-ng`  
- **DNS 增强**：`dnsmasq-full`、`https-dns-proxy`，支持 DoH/DoT  
- **TurboACC**：网络加速插件，启用 Shortcut-FE、Flow Offload 等内核加速模块  

### ☁️ Cloudflared
- **cloudflared**：Cloudflare 提供的安全隧道工具，可用于 DNS over HTTPS 或 Zero Trust 隧道  

### 🔧 网络工具与内核模块
- **iptables 扩展**：支持 TProxy、Conntrack、NAT 等高级功能  
- **kmod-tun / kmod-sit**：支持 VPN 隧道与 IPv6 over IPv4  
- **tcping / resolveip**：网络诊断工具  

---

## 🎯 使用场景
- **家庭网络**：轻松管理防火墙、端口转发、DNS 加速  
- **科学上网**：Passwall2 提供多种代理协议，适合复杂网络环境  
- **容器化应用**：Docker 支持，可运行 Home Assistant、NAS 服务等  
- **性能优化**：TurboACC 提升转发性能，适合千兆网络环境  

---

## ⚠️ 注意事项
- 已移除所有 Python 包和旧依赖包，避免编译失败  
- Workflow 中需使用 `make defconfig`，不要再调用 `olddefconfig`  
- feeds 安装后会自动清理掉 `python-*` 包目录  

---
