#!/bin/bash

# 修改默认 IP
sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate

# 修改默认主题
DEFAULT_THEME=${DEFAULT_THEME:-luci-theme-argon}
sed -i "s/luci-theme-bootstrap/$DEFAULT_THEME/g" feeds/luci/collections/luci/Makefile

# 修改默认主机名
DEFAULT_HOSTNAME=${DEFAULT_HOSTNAME:-P3TERX-Router}
sed -i "s/OpenWrt/$DEFAULT_HOSTNAME/g" package/base-files/files/bin/config_generate
# 删除 SSR Plus 相关配置
sed -i '/CONFIG_PACKAGE_luci-app-ssr-plus/d' .config
sed -i '/CONFIG_PACKAGE_kmod-tun/d' .config
sed -i '/CONFIG_PACKAGE_kmod-nf-conntrack/d' .config
