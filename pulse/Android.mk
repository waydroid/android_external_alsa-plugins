# external/alsa-plugins/Android.mk
#
# Copyright 2008 Wind River Systems
#

#ifeq ($(strip $(BOARD_USES_ALSA_AUDIO)),true)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := libasound_module_pcm_pulse
LOCAL_MODULE_TAGS := optional
LOCAL_PRELINK_MODULE := false
LOCAL_ARM_MODE := arm
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_RELATIVE_PATH := hw

LOCAL_C_INCLUDES += $(LOCAL_PATH)/include \
  external/alsa-lib/include \
  external/pulseaudio/src/ \

LOCAL_CFLAGS := \
	-fPIC -DPIC \
	-Wno-error

LOCAL_LDFLAGS := \
	-Wl,--no-fatal-warnings

LOCAL_SRC_FILES := pcm_pulse.c \
                   pulse.c

LOCAL_SHARED_LIBRARIES := \
    libpulse \
    libasound

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libasound_module_ctl_pulse
LOCAL_MODULE_TAGS := optional
LOCAL_PRELINK_MODULE := false
LOCAL_ARM_MODE := arm
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_RELATIVE_PATH := hw

LOCAL_C_INCLUDES += $(LOCAL_PATH)/include \
  external/alsa-lib/include \
  external/pulseaudio/src/ \

LOCAL_CFLAGS := \
	-fPIC -DPIC \
	-Wno-error

LOCAL_LDFLAGS := \
	-Wl,--no-fatal-warnings

LOCAL_SRC_FILES := ctl_pulse.c \
                   pulse.c

LOCAL_SHARED_LIBRARIES := \
    libpulse \
    libasound

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libasound_module_conf_pulse
LOCAL_MODULE_TAGS := optional
LOCAL_PRELINK_MODULE := false
LOCAL_ARM_MODE := arm
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_RELATIVE_PATH := hw

LOCAL_C_INCLUDES += $(LOCAL_PATH)/include \
  external/alsa-lib/include \
  external/pulseaudio/src/ \

LOCAL_CFLAGS := \
	-fPIC -DPIC \
	-Wno-error

LOCAL_LDFLAGS := \
	-Wl,--no-fatal-warnings

LOCAL_SRC_FILES := conf_pulse.c

LOCAL_SHARED_LIBRARIES := \
    libpulse \
    libasound

include $(BUILD_SHARED_LIBRARY)

#endif

