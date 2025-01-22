#
# Copyright (C) 2018 The Xiaomi-SDM660 Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# Inherit device configuration
$(call inherit-product, device/xiaomi/lavender/device.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Build Description
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="lavender-user 10 QKQ1.190910.002 V11.0.1.0.QFGMIXM release-keys" \
    BuildFingerprint=xiaomi/lavender/lavender:10/QKQ1.190910.002/V11.0.1.0.QFGMIXM/release-keys \
    DeviceProduct=lavender

INFINITY_MAINTAINER := MiTESH
#TARGET_SUPPORTS_BLUR := true/false (Default: false)

# Whether the compiled package ships Widely Used Minimal Google Apps:
#WITH_GAPPS := true/false (Default: false)

# Whether the compiled package ships Complete present Google Apps:
#TARGET_SHIPS_FULL_GAPPS := true/false (Default: false) # (WITH_GAPPS must be set to true alongside)

# Whether the compiled shipped gapps package uses Google Dialer, Messaging, Contacts:
#TARGET_BUILD_GOOGLE_TELEPHONY := true/false (Default: false) # (WITH_GAPPS must be set to true alongside)

# Whether the compiled package ships Moto Calculator irrespective VANILLA or GAPPS:
USE_MOTO_CALCULATOR := true

# Device identifier
PRODUCT_NAME := lineage_lavender
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_PLATFORM := SDM660
PRODUCT_DEVICE := lavender
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7

TARGET_VENDOR_PRODUCT_NAME := lavender
