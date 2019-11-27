ARCHS = armv7 arm64
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = autorap
autorap_FILES = Tweak.xm
autorap_LDFLAGS += -Wl,-segalign,4000
autorap_FRAMEWORKS = UIKit MessageUI Social QuartzCore CoreGraphics Foundation AVFoundation Accelerate GLKit AudioToolbox


include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
