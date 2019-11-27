ARCHS = armv7 arm64
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = VoicePremium
VoicePremium_FILES = Tweak.xm
VoicePremium_LDFLAGS += -Wl,-segalign,4000
VoicePremium_FRAMEWORKS = UIKit MessageUI Social QuartzCore CoreGraphics Foundation AVFoundation Accelerate GLKit AudioToolbox


include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
