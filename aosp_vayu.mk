#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from vayu device
$(call inherit-product, device/xiaomi/vayu/device.mk)

# Inherit some common kraken stuff.
$(call inherit-product, vendor/aosp/config/common.mk)

# Boot Animation Resolution
TARGET_BOOT_ANIMATION_RES := 1080


PRODUCT_NAME := aosp_vayu
PRODUCT_DEVICE := vayu
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO X3 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Add-ons
# Device Settings
$(call inherit-product-if-exists, vendor/xiaomi/devicesettings/config.mk)
# Google Camera 
# $(call inherit-product-if-exists, vendor/Gcam/config.mk)
# Pixel Launcher
# $(call inherit-product-if-exists, vendor/pixel/launcher/config.mk)
