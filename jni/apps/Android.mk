
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := hook_sharp_fota
LOCAL_SRC_FILES := hook_sharp_fota.c
LOCAL_C_INCLUDES += $(JNI_ROOT_PATH)/include
LOCAL_CFLAGS += -Wall -DTAG=\"HSDK:$(LOCAL_MODULE)\"
LOCAL_STATIC_LIBRARIES += hook_java
LOCAL_LDLIBS := -llog
include $(BUILD_SHARED_LIBRARY)

