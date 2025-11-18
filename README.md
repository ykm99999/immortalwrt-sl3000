# ImmortalWrt SL3000 固件

本项目基于 [ImmortalWrt](https://github.com/immortalwrt/immortalwrt) 源码，针对 **SL3000 路由器** 定制编译的固件。

## ✨ 特性
- 基于 **Linux 5.4 LTS 内核**
- 支持 **MT7981 平台**
- 精简掉无用的 USB 模块（适配无 USB 接口设备）
- 集成常用插件：
  - Docker
  - Passwall
  - SSR Plus
- 默认启用防火墙、PPPoE、Luci 管理界面等基础功能

## 🚀 使用方法
1. 克隆本仓库：
   ```bash
   git clone https://github.com/ykm888/immortalwrt-sl3000.git
   cd immortalwrt-sl3000
