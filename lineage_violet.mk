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

#Matrixx Flags
MATRIXX_BUILD_TYPE := Unofficial
MATRIXX_MAINTAINER := Chronix
MATRIXX_CHIPSET := Snapdragon 675
MATRIXX_BATTERY := 4000mAh
MATRIXX_DISPLAY := 1080x2340
TARGET_SUPPORTS_WALLEFFECT := true
BYPASS_CHARGE_SUPPORTED  := true
WITH_GMS := true
WITH_GMS_COMMS_SUITE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_STOCK_AICORE := true

# Inherit Camera-related flags
TARGET_USES_MIUI_CAMERA := true
TARGET_INCLUDES_MIUI_CAMERA := true

#Some Other Flags
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_BUILD_APERTURE_CAMERA := false

#Include ViperFX
$(call inherit-product, packages/apps/ViPER4AndroidFX/config.mk)

#GAPPS
WITH_GAPPS := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_violet
PRODUCT_DEVICE := violet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
