ARCHS = armv7s arm64 arm64e
PACKAGE_VERSION = $(THEOS_PACKAGE_BASE_VERSION)
THEOS_PACKAGE_DIR_NAME = deb

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = CustomNoPostLabel
CustomNoPostLabel_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
