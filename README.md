# 司洛 SL-3000 精简固件与软件包编译说明

## 🔹 精简固件介绍
本项目的固件采用 **极简化配置**，只保留设备运行所需的最基本功能：
- 支持 MT7981 平台与 eMMC 存储
- 保留基础驱动（GPIO、EMMC、NAND）
- 保留内核日志输出（printk）
- 不预装多余插件，保持固件体积小、运行稳定

这样做的好处是：
- 固件刷机更快，占用空间更小
- 系统运行更稳定，减少不必要的依赖
- 插件可以后续单独安装，灵活升级

---

## 🔹 精简固件说明
- 固件只包含最小化的系统组件（BusyBox、opkg 等）
- 不包含 Luci、Docker、SSR Plus、Passwall 等插件
- 用户可以通过 `opkg install` 单独安装需要的软件包
- 适合追求轻量化和可定制化的用户

---
# 📦 路由器固件软件包说明

本固件集成了常用的系统工具、容器支持、网络加速、代理功能以及固件在线升级，适合家庭宽带、远程访问和高性能路由场景。

---

## 🛠️ 基础工具链
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
  - 集成 **Shortcut-FE** 快速转发  
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
- **基础系统工具链**  
- **Docker 容器支持**  
- **Cloudflare 隧道接入**  
- **Turbo ACC 网络加速**  
- **Passwall2 多协议代理**  
- **固件在线升级**  

适合需要 **容器化应用 + 网络加速 + 安全隧道 + 代理功能 + 在线升级** 的路由器固件编译场景。
