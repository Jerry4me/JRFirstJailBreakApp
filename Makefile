ARCHS = armv7 arm64
TARGET = iphone:latest:7.0
THEOS_DEVICE_IP = 192.168.1.139

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = iOSTest
iOSTest_FILES = Tweak.xm
iOSTest_FRAMEWORKS = UIKit


include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
