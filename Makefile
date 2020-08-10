ARCHS = arm64 arm64e
THEOS_DEVICE_IP = 192.168.1.188
INSTALL_TARGET_PROCESSES = com.ebsco.dmp

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = DynaMed_

DynaMed__FILES = Tweak.x
DynaMed__CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
