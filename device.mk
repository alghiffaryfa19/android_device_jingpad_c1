#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# API levels
PRODUCT_SHIPPING_API_LEVEL := 29

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := tablet

# Rootdir
PRODUCT_PACKAGES += \
    log_to_csv.sh \
    loading.sh \
    para.sh \
    total.sh \

PRODUCT_PACKAGES += \
    fstab.factorytest \
    init.cali.rc \
    init.common.rc \
    init.factorytest.rc \
    init.ram.rc \
    init.storage.rc \
    init.ud710_3h10u.rc \
    init.ud710_3h10u.usb.rc \
    init.rc \
    init.recovery.common.rc \
    init.recovery.ud710_3h10u.rc \
    ueventd.rc \
    ueventd.ud710_3h10u.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.factorytest:$(TARGET_COPY_OUT_RAMDISK)/fstab.factorytest

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/jingling/JingPad C1/JingPad C1-vendor.mk)
