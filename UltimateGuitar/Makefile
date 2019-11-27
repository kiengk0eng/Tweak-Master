ARCHS = armv7 arm64
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = UltimateGuitar
UltimateGuitar_FILES = Tweak.xm
UltimateGuitar_LDFLAGS += -Wl,-segalign,4000
UltimateGuitar_FRAMEWORKS = UIKit MessageUI Social QuartzCore CoreGraphics Foundation AVFoundation Accelerate GLKit AudioToolbox

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"