#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from JingPad C1 device
$(call inherit-product, device/jingling/JingPad C1/device.mk)

PRODUCT_DEVICE := JingPad C1
PRODUCT_NAME := lineage_JingPad C1
PRODUCT_BRAND := JingPad
PRODUCT_MODEL := JingPad C1
PRODUCT_MANUFACTURER := jingling

PRODUCT_GMS_CLIENTID_BASE := android-jingling

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ud710_3h10u_native-user 10 QP1A.190711.020 44110 release-keys"

BUILD_FINGERPRINT := JingPad/ud710_3h10u_native/ud710_3h10u:10/QP1A.190711.020/44110:user/release-keys
