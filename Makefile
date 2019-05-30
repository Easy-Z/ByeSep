include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ByeSep
ByeSep_FILES = Tweak.xm
ByeSep_EXTRA_FRAMEWORKS = KBAppList

ByeSep_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += byesepprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
