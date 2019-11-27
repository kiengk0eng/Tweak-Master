ARCHS = armv7 arm64
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = VivaVideo
VivaVideo_FILES = Tweak.xm
VivaVideo_LDFLAGS += -Wl,-segalign,4000
VivaVideo_FRAMEWORKS = UIKit MessageUI Social QuartzCore CoreGraphics Foundation AVFoundation Accelerate GLKit AudioToolbox


include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
