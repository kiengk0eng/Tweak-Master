ARCHS = armv7 arm64
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = FOCOS
FOCOS_FILES = Tweak.xm
FOCOS_LDFLAGS += -Wl,-segalign,4000
FOCOS_FRAMEWORKS = UIKit MessageUI Social QuartzCore CoreGraphics Foundation AVFoundation Accelerate GLKit AudioToolbox

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"

