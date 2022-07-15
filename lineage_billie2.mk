#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from billie device
$(call inherit-product, device/oneplus/billie2/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Set shipping API level (Indicates the first api level, device has been commercially launched on)
PRODUCT_SHIPPING_API_LEVEL := 29

# Device identifiers.
PRODUCT_NAME := lineage_billie2
PRODUCT_DEVICE := billie2
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := Nord N100

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="OnePlusN100-user 10 QKQ1.200719.002 2101222300 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := OnePlus/OnePlusN100/OnePlusN100:10/QKQ1.200719.002/2101222300:user/release-keys
