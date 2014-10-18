#
# Copyright (C) 2006-2014 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
# http://madet.my
#
# Cross Compiled by
# Mahadir Ahmad <mahadir@madet.my>
#

include $(TOPDIR)/rules.mk

PKG_NAME:=tree
PKG_VERSION:=1.7.0
PKG_RELEASE:=1

PKG_BUILD_DIR:= $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk


define Package/tree
	SECTION:=utils
	CATEGORY:=Utilities
	TITLE:=Display a tree view of directories
	URL:=http://mama.indstate.edu/users/ice/tree/
endef

define Package/tree/description
 This is a handy little utility to display a tree view of directories that
 I wrote some time ago and just added color support to.
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) -r ./src/* $(PKG_BUILD_DIR)/
endef


TARGET_CFLAGS += $(FPIC)

define Package/tree/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/tree $(1)/usr/sbin/
endef

define Package/smstools3/preinst
#!/bin/sh
exit 0
endef

define Package/tree/postinst
#!/bin/sh
exit 0
endef

define Package/smstools3/prerm
#!/bin/sh
exit 0
endef

define Package/smstools3/postrm
#!/bin/sh
exit 0
endef

$(eval $(call BuildPackage,tree))

