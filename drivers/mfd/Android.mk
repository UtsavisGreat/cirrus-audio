ifeq (heart,$(findstring heart,$(TARGET_PRODUCT)))
DLKM_DIR := vendor/cirrus/modules/
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
ifeq ($(CIRRUS_MADERA_CODEC),cs47l15)
KERNEL_CFLAGS += CONFIG_MFD_CS47L15=y
endif
ifeq ($(CIRRUS_MADERA_CODEC),cs47l35)
KERNEL_CFLAGS += CONFIG_MFD_CS47L35=y
endif
ifeq ($(CIRRUS_MADERA_CODEC),cs47l85)
KERNEL_CFLAGS += CONFIG_MFD_CS47L85=y
endif
ifeq ($(CIRRUS_MADERA_CODEC),cs47l90)
KERNEL_CFLAGS += CONFIG_MFD_CS47L90=y
endif
ifeq ($(CIRRUS_MADERA_CODEC),cs47l92)
KERNEL_CFLAGS += CONFIG_MFD_CS47L92=y
endif

LOCAL_MODULE := cirrus_madera-core.ko
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(KERNEL_MODULES_OUT)
include $(DLKM_DIR)/AndroidKernelModule.mk
else
endif
