ARCHS = armv7 arm64
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = djmixpads2
djmixpads2_FILES = Tweak.xm
djmixpads2_LDFLAGS += -Wl,-segalign,4000
djmixpads2_FRAMEWORKS = UIKit MessageUI Social QuartzCore CoreGraphics Foundation AVFoundation Accelerate GLKit AudioToolbox


include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
