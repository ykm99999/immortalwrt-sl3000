# 📦 SL-3000 固件与软件包说明

本固件基于 **OpenWrt/ImmortalWrt**，针对 **司洛 SL-3000 (MT7981 芯片, EMMC 版本)** 编译，集成了常用的系统工具、容器支持、网络加速、代理功能以及固件在线升级。

---

## ⚙️ 固件基础信息
- **目标平台**：MediaTek MT7981  
- **设备型号**：SL-3000 (EMMC 版本)  
- **CPU 架构**：ARM64 Cortex-A53  
- **内核版本**：Linux 5.4  
- **存储支持**：EMMC / NAND  
- **文件系统**：SquashFS 压缩根文件系统  
- **硬件支持**：
  - GPIO  
  - DeviceTree  
  - 64 位架构  
  - 内核日志输出 (printk)  

---

## 🛠️ 系统工具链
- **base-files**：OpenWrt 基础文件与系统结构  
- **busybox**：轻量级工具集，提供常用命令  
- **opkg**：OpenWrt 包管理器，支持软件安装与更新  
- **modules**：支持内核模块加载，保证系统可扩展性  

---

## 🐳 Docker 支持
- **luci-app-docker**：Web 界面管理 Docker 容器  
- **kmod-veth / kmod-bridge**：虚拟网卡与桥接支持  
- **kmod-overlay**：OverlayFS 支持，便于容器存储管理  
- **kmod-fs-ext4 / btrfs / xfs**：多种文件系统驱动，支持容器卷挂载  
- **kmod-cgroup**：Linux CGroup 支持，容器资源隔离与限制  
- **kmod-nf-nat**：网络地址转换 (NAT)，保证容器网络互通  

---

## 🌐 Cloudflare 隧道
- **cloudflared**：Cloudflare Tunnel 客户端  
  - 提供安全隧道接入  
  - 支持内网穿透与远程访问  
  - 加密传输，利用 Cloudflare 网络加速  

---

## ⚡ 网络加速
- **luci-app-turboacc**：综合网络加速插件  
  - **Shortcut-FE** 快速转发  
  - **TCP BBR** 拥塞控制算法  
  - **全锥型 NAT (FullCone NAT)**  
  - **Flow Offloading** 流量分载  
- **luci-app-sqm**：智能队列管理 (SQM)，缓解 Bufferbloat，优化延迟  

---

## 🔐 Passwall2 支持
- **luci-app-passwall2**：新版多协议代理插件，结构更简洁，更新更快  
- 依赖支持：
  - **tun**：虚拟网卡驱动  
  - **nat**：网络地址转换  
  - **conntrack**：连接跟踪模块  

---

## 🔄 固件在线升级
- **luci-app-attendedsysupgrade**：LuCI 在线升级界面  
- **rpcd-mod-iwinfo**：提供升级所需的系统信息  
- **attendedsysupgrade-common**：后台支持模块，保证升级过程稳定  

---

## 📌 总结
该固件提供了：
- **硬件平台支持 (MT7981 SL-3000 EMMC)**  
- **基础系统工具链**  
- **Docker 容器管理**  
- **Cloudflare 隧道接入**  
- **Turbo ACC 网络加速 (含 Flow Offloading)**  
- **Passwall2 多协议代理**  
- **固件在线升级**  

适合需要 **容器化应用 + 网络加速 + 安全隧道 + 代理功能 + 在线升级** 的路由器固件编译场景。
