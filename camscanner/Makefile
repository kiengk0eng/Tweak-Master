ARCHS = armv7 arm64
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = CamScanner
CamScanner_FILES = Tweak.xm
CamScanner_LDFLAGS += -Wl,-segalign,4000
CamScanner_FRAMEWORKS = UIKit MessageUI Social QuartzCore CoreGraphics Foundation AVFoundation Accelerate GLKit AudioToolbox


include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
