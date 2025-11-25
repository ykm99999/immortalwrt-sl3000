define Device/siluo_sl3000
  DEVICE_VENDOR := Siluo
  DEVICE_MODEL := SL-3000
  DEVICE_DTS := mt7981-siluo-sl3000
  DEVICE_PACKAGES := kmod-mt7981-wifi uboot-envtools
endef
TARGET_DEVICES += siluo_sl3000
