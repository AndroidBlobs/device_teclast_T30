# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from T30 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := teclast
PRODUCT_DEVICE := T30
PRODUCT_MANUFACTURER := teclast
PRODUCT_NAME := lineage_T30
PRODUCT_MODEL := T30_EEA

PRODUCT_GMS_CLIENTID_BASE := android-teclast
TARGET_VENDOR := teclast
TARGET_VENDOR_PRODUCT_NAME := T30
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="full_tb8788p1_64_bsp-user 9 PPR1.180610.011 panyh09061416 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Teclast/T30_eea/T30:9/PPR1.180610.011/panyh09061416:user/release-keys
