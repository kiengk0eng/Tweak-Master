ARCHS = armv7 arm64
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = HYPETYPE
HYPETYPE_FILES = Tweak.xm
HYPETYPE_LDFLAGS += -Wl,-segalign,4000
HYPETYPE_FRAMEWORKS = UIKit MessageUI Social QuartzCore CoreGraphics Foundation AVFoundation Accelerate GLKit AudioToolbox

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"