include $(TOPDIR)/rules.mk

PKG_NAME:=sl3000-logo
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/sl3000-logo
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=司络 SL-3000 Logo
endef

define Package/sl3000-logo/install
  $(INSTALL_DIR) $(1)/www
  $(INSTALL_DATA) ./files/logo.jpeg $(1)/www/logo.jpeg
endef

$(eval $(call BuildPackage,sl3000-logo))
