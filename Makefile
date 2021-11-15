TARGET = iphone:14.4:14.0
ARCHS = arm64

INSTALL_TARGET_PROCESSES = CheckMyMobileSalt

include $(THEOS)/makefiles/common.mk
XCODEPROJ_NAME = CheckMyMobileSalt
ExampleApp_XCODE_SCHEME = CheckMyMobileSalt
ExampleApp_CODESIGN_FLAGS = -Sentitlements.xml

include $(THEOS_MAKE_PATH)/xcodeproj.mk
