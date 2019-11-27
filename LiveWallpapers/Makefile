ARCHS = armv7 arm64
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = LiveWallpapers
LiveWallpapers_FILES = Tweak.xm
LiveWallpapers_LDFLAGS += -Wl,-segalign,4000
LiveWallpapers_FRAMEWORKS = UIKit MessageUI Social QuartzCore CoreGraphics Foundation AVFoundation Accelerate GLKit AudioToolbox

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"