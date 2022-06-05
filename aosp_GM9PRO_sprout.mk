#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Proton+ stuff
$(call inherit-product, vendor/proton/build/common.mk)

# Inherit from device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

#Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_BRAND := GM
PRODUCT_DEVICE := GM9PRO_sprout
PRODUCT_MANUFACTURER := General Mobile
PRODUCT_NAME := aosp_GM9PRO_sprout
PRODUCT_MODEL := GM 9 Pro

PRODUCT_GMS_CLIENTID_BASE := android-gm
TARGET_VENDOR := GM
TARGET_VENDOR_PRODUCT_NAME := GM9PRO_sprout
PRODUCT_BUILD_PROP_OVERRIDES += \
        PRIVATE_BUILD_DESC="raven-user 12 SP2A.220405.004 8233519 release-keys"

BUILD_FINGERPRINT :="google/raven/raven:12/SP2A.220405.004/8233519:user/release-keys"
