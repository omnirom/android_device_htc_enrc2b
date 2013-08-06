## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := enrc2b

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/enrc2b/device_enrc2b.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := enrc2b
PRODUCT_NAME := cm_enrc2b
PRODUCT_BRAND := htc
PRODUCT_MODEL := enrc2b
PRODUCT_MANUFACTURER := htc
