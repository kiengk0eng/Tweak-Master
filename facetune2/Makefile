ARCHS = armv7 arm64
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Facetune2
Facetune2_FILES = Tweak.xm
Facetune2_LDFLAGS += -Wl,-segalign,4000
Facetune2_FRAMEWORKS = UIKit MessageUI Social QuartzCore CoreGraphics Foundation AVFoundation Accelerate GLKit AudioToolbox


include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
