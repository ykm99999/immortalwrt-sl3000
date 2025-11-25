define Device/siluo_sl3000
  DEVICE_VENDOR := Siluo
  DEVICE_MODEL := SL-3000
  DEVICE_DTS := mt7981-siluo-sl3000
  DEVICE_PACKAGES := \
    kmod-mt7981-wifi \
    uboot-envtools \
    block-mount \
    kmod-usb3 \
    kmod-usb-storage \
    kmod-fs-ext4 \
    kmod-fs-vfat \
    kmod-fs-exfat \
    kmod-fs-ntfs3 \
    luci \
    luci-i18n-base-zh-cn \
    luci-theme-bootstrap \
    luci-app-firewall \
    luci-app-upnp \
    luci-app-samba4 \
    luci-app-ddns \
    luci-app-docker \
    luci-app-passwall2 \
    luci-i18n-passwall2-zh-cn \
    luci-app-ssr-plus \
    luci-i18n-ssr-plus-zh-cn \
    luci-app-turboacc \
    luci-i18n-turboacc-zh-cn
endef
TARGET_DEVICES += siluo_sl3000
