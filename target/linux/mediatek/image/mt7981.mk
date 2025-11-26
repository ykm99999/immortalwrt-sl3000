define Device/siluo_sl3000
  DEVICE_VENDOR := Siluo
  DEVICE_MODEL := SL3000
  DEVICE_DTS := mt7981-siluo-sl3000
  DEVICE_PACKAGES := kmod-mt7981-wifi wpad-openssl luci
  IMAGES := sysupgrade.bin initramfs.bin
  IMAGE/sysupgrade.bin := append-rootfs | gzip | append-metadata
  IMAGE/initramfs.bin := append-initramfs | gzip
endef
TARGET_DEVICES += siluo_sl3000
