#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm660-common
$(call inherit-product, device/asus/sdm660-common/sdm660.mk)

# Overlays
PRODUCT_PACKAGES += \
    X01BDFrameworksResTarget \
    X01BDNoCutoutOverlay \
    X01BDSystemUI \
    X01BDWifiOverlay

# Ramdisk
PRODUCT_PACKAGES += \
    init.asus.rc

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Thermal configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine.conf

# Inherit the proprietary files
$(call inherit-product, vendor/asus/X01BD/X01BD-vendor.mk)
