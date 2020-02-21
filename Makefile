INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ReachCC13

ReachCC13_FILES = Tweak.x
ReachCC13_CFLAGS = -fobjc-arc
ARCHS = arm64 arm64e
include $(THEOS_MAKE_PATH)/tweak.mk
