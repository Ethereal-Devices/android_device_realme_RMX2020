#
# Copyright (C) 2018-2022 ArrowOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit from device makefile
$(call inherit-product, device/realme/RMX2020/device.mk)

# Inherit some common Ethereal stuff.
$(call inherit-product, vendor/ethereal/config/common_full_phone.mk)

ETHEREAL_BUILD_TYPE := OFFICIAL
ETHEREAL_MAINTAINER := IamCOD3X

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := ethereal_RMX2020
PRODUCT_DEVICE := RMX2020
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX2020
PRODUCT_MANUFACTURER := realme

PRODUCT_SYSTEM_MODEL := RMX2020
PRODUCT_SYSTEM_NAME := RMX2020
PRODUCT_SYSTEM_DEVICE := RMX2020

# Build info
BUILD_FINGERPRINT := "realme/RMX2020/RMX2020:11/RP1A.200720.011/1652239672541:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=RMX2020 \
    PRODUCT_NAME=RMX2020 \
    PRIVATE_BUILD_DESC="RMX2020-user 11 RP1A.200720.011 1652239672541 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
