include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = ByeSepPrefs
ByeSepPrefs_FILES = BSPRootListController.m
ByeSepPrefs_INSTALL_PATH = /Library/PreferenceBundles
ByeSepPrefs_FRAMEWORKS = UIKit
ByeSepPrefs_PRIVATE_FRAMEWORKS = Preferences
ByeSepPrefs_EXTRA_FRAMEWORKS += KBAppList

ByeSepPrefs_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/ByeSepPrefs.plist$(ECHO_END)
