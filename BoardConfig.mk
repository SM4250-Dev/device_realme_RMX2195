#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/realme/RMX2195

# Display
TARGET_SCREEN_DENSITY := 440

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):init_realme_RMX2195
TARGET_RECOVERY_DEVICE_MODULES := init_realme_RMX2195

# Kernel
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz

# OTA assert
TARGET_OTA_ASSERT_DEVICE := RMX2195,RMX2101,RECE4244

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Inherit from sm4250-common
include device/realme/sm4250-common/BoardConfigCommon.mk

# Inherit from the proprietary version
include vendor/realme/RMX2195/BoardConfigVendor.mk
