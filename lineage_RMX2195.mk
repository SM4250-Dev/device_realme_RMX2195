#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common lineage-OS stuff.
$(call inherit-product, vendor/lineage/config/common.mk)

# Inherit from RMX2195 device
$(call inherit-product, device/realme/RMX2195/device.mk)

PRODUCT_NAME := lineage_RMX2195
PRODUCT_DEVICE := RMX2195
PRODUCT_MANUFACTURER := Realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme C15 Qualcomm Edition

PRODUCT_GMS_CLIENTID_BASE := android-realme

# Some Build Flags
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="bengal-user 11 RKQ1.211001.001 C.16 release-keys"

BUILD_FINGERPRINT := realme/bengal_global/bengal:11/RKQ1.211001.001/C.16:user/release-keys
