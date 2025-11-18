# ImmortalWrt SL3000 固件 (版本 24.10)

本项目基于 [ImmortalWrt](https://github.com/immortalwrt/immortalwrt) **24.10 主线源码**，针对 **SL3000 路由器 (MT7981 芯片, eMMC 存储)** 定制编译的固件。

---

## ✨ 特性
- 固件版本：**24.10**
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

   📥 下载与安装
在 Releases 页面下载对应固件文件：

- immortalwrt-mediatek-mt7981-sl3000-emmc-squashfs-factory.bin （首次刷机用）  
- immortalwrt-mediatek-mt7981-sl3000-emmc-squashfs-sysupgrade.bin （升级用）  

安装方法
- 首次刷机：在原厂固件 Web 界面选择 factory.bin 文件刷入。  
- 已运行 ImmortalWrt：在 Luci 管理界面 → 系统 → 升级 → 选择 sysupgrade.bin 文件刷入。  

注意事项
- 刷机前确认设备型号为 SL3000 (MT7981, eMMC)。  
- 建议备份原始配置。  
- 刷机过程中请勿断电。  

---

📌 声明
本固件基于 ImmortalWrt 24.10 编译，可能存在实验性功能。请谨慎使用。  
作者不对因使用本固件造成的任何问题负责。 
