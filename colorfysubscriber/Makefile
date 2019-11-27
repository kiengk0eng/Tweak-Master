ARCHS = armv7 arm64
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ColorfySubscriber
ColorfySubscriber_FILES = Tweak.xm
ColorfySubscriber_LDFLAGS += -Wl,-segalign,4000
ColorfySubscriber_FRAMEWORKS = UIKit MessageUI Social QuartzCore CoreGraphics Foundation AVFoundation Accelerate GLKit AudioToolbox


include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
