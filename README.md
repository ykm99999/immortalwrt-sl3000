# ImmortalWrt SL3000 固件

本项目基于 [ImmortalWrt](https://github.com/immortalwrt/immortalwrt) 源码，针对 **SL3000 路由器 (MT7981 芯片, eMMC 存储)** 定制编译的固件。

---

## ✨ 特性
- 内核版本：**Linux 5.4 LTS**
- 支持设备：**SL3000 (MT7981, eMMC)**
- 集成功能：
  - Docker
  - Passwall
  - SSR Plus
- 默认启用：
  - Luci 管理界面
  - 防火墙
  - PPPoE
  - UPnP

---

## 🛠 路由器配置
- **硬件平台**：MT7981 SoC  
- **存储**：eMMC  
- **接口**：WAN/LAN 以太网  
- **固件特性**：  
  - 集成 Docker 容器支持  
  - 集成科学上网插件（Passwall、SSR Plus）  
  - 默认启用防火墙、PPPoE、UPnP、Luci Web 管理  

---

## 🚀 使用方法
1. 克隆本仓库：
   ```bash
   git clone https://github.com/ykm888/immortalwrt-sl3000.git
   cd immortalwrt-sl3000
