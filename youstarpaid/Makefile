ARCHS = armv7 arm64
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = YouStarPaid
YouStarPaid_FILES = Tweak.xm
YouStarPaid_LDFLAGS += -Wl,-segalign,4000
YouStarPaid_FRAMEWORKS = UIKit MessageUI Social QuartzCore CoreGraphics Foundation AVFoundation Accelerate GLKit AudioToolbox


include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
