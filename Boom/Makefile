ARCHS = armv7 arm64
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Boom
Boom_FILES = Tweak.xm
Boom_LDFLAGS += -Wl,-segalign,4000
Boom_FRAMEWORKS = UIKit MessageUI Social QuartzCore CoreGraphics Foundation AVFoundation Accelerate GLKit AudioToolbox

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"