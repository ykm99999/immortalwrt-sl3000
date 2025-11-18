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

## 🔹 编译包介绍
为了保持固件精简，本项目提供 **独立的软件包编译** 工作流：
- 使用 GitHub Actions 自动编译指定插件
- 编译结果为 `.ipk` 格式的二进制安装包
- 插件包会自动上传到 **Release 页面**，可直接下载使用

### 已支持的软件包
- **Docker**（luci-app-docker）  
  提供容器运行环境，需要内核支持 cgroups、overlayfs 等  
- **SSR Plus**（luci-app-ssr-plus）  
  支持多种代理协议，依赖 TUN 虚拟网卡  
- **Cloudflare 隧道**（cloudflared）  
  提供安全的远程访问通道，无需额外内核支持  
- **Turbo ACC 网络加速**（luci-app-turboacc）  
  提供 Shortcut-FE、BBR、Flow Offload 等加速功能  
- **Passwall**（luci-app-passwall）  
  高级代理插件，支持多种协议，依赖 TUN/NAT/Conntrack  

---

## 🔹 使用方法
1. 在 Release 页面下载对应的 `.ipk` 包  
2. 上传到路由器  
3. 执行安装命令：
   ```bash
   opkg install xxx.ipk
