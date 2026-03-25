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

# lineage Stuff
lineage_OFFICIAL := true
lineage_GAPPS_TYPE := gapps
lineage_VARIANT := RELEASE

PRODUCT_NAME := lineage_RMX2195
PRODUCT_DEVICE := RMX2195
PRODUCT_MANUFACTURER := Realme
PRODUCT_BRAND := Realme
PRODUCT_MODEL := Realme C15 Qualcomm

PRODUCT_GMS_CLIENTID_BASE := android-realme

# Some Build Flags
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_USES_BLUR := true
TARGET_USES_AOSP_CHARGER := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_INCLUDE_STOCK_ARCORE := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX2195-user 11 RKQ1.211001.001 V13.0.5.0.RGCMIXM release-keys"

BUILD_FINGERPRINT := Realme/RMX2195_global/RMX2195:11/RKQ1.211001.001/V13.0.5.0.RGCMIXM:user/release-keys
