#
# Copyright (C) 2018-2020 The LineageOS Project
# Copyright (C) 2020 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from violet device
$(call inherit-product, device/xiaomi/violet/device.mk)

# Inherit some common EvoX stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Rising Os
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_BUILD_APERTURE_CAMERA := true
BYPASS_CHARGE_SUPPORTED  := true

#Include ViperFX
$(call inherit-product, packages/apps/ViPER4AndroidFX/config.mk)

# full gapps build
WITH_GMS := true
BUILD_WITH_GAPPS := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true
TARGET_INCLUDE_GOOGLE_DIALER := true
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := false
TARGET_ENABLE_BLUR := true
PRODUCT_NO_CAMERA := true

# Maintainer
RISING_MAINTAINER := Anirban_X_Chronix
PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset="Snapdragon 675" \
    RisingMaintainer="Anirban_X_Chronix"

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_violet
PRODUCT_DEVICE := violet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
