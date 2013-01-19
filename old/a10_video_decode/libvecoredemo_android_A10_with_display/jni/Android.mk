
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := vecore
LOCAL_SRC_FILES := vdecoder/libvecore/libvecore.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := cedarxalloc
LOCAL_SRC_FILES := vdecoder/adapter/cdxalloc/cdxalloc.c
LOCAL_CFLAGS += -Wall -pedantic -std=c99 -g
include $(BUILD_STATIC_LIBRARY)

LOCAL_C_INCLUDES := \
	/home/dp/work/android-nptv-native-player/jni/inc-14/

include $(CLEAR_VARS)

LOCAL_CFLAGS += -frtti -static-libgcc -static-libstdc++

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := bxpve

#add c file below
LOCAL_SRC_FILES := \
			main.cpp \
			vdecoder/adapter/libve_adapter.c \
			vdecoder/adapter/os_adapter.c \
			vdecoder/fbm/fbm.c \
			vdecoder/libcedarv/vdecoder.c \
			vdecoder/vbv/vbv.c \
			render.c \
			pmp_file_parser/pmp.c \
			pmp_file_parser/pmp_ctrl.c \

LOCAL_C_INCLUDES := $(KERNEL_HEADERS) \
			$(LOCAL_PATH)/vdecoder/adapter/cdxalloc \
			$(LOCAL_PATH)/vdecoder/adapter \
			$(LOCAL_PATH)/vdecoder/fbm \
			$(LOCAL_PATH)/vdecoder/libcedarv \
			$(LOCAL_PATH)/vdecoder/libvecore \
			$(LOCAL_PATH)/vdecoder/vbv \
			$(LOCAL_PATH)/pmp_file_parser

LOCAL_STATIC_LIBRARIES := cedarxalloc vecore

LOCAL_LDLIBS := \
         -llog \
         -lc \

LOCAL_LD_FLAGS += -Wl --verbose 

include $(BUILD_EXECUTABLE)