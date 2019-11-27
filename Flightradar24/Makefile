ARCHS = armv7 arm64
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = FlightRadar24
FlightRadar24_FILES = Tweak.xm
FlightRadar24_LDFLAGS += -Wl,-segalign,4000
FlightRadar24_FRAMEWORKS = UIKit MessageUI Social QuartzCore CoreGraphics Foundation AVFoundation Accelerate GLKit AudioToolbox

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"