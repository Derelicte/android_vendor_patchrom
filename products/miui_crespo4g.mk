$(call inherit-product, device/samsung/crespo4g/full_crespo4g.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/patchrom/config/common_full_phone.mk)

PRODUCT_COPY_FILES +=  \
    vendor/patchrom/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

# Release name
PRODUCT_RELEASE_NAME := NS4G

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=full_crespo4g BUILD_FINGERPRINT=google/full_crespo4g/crespo4g:MIUI-4.0.4/IMM76D/404111:user/release-keys PRIVATE_BUILD_DESC="full_crespo4g-user MIUI-4.0.4 IMM76D 255454 release-keys" BUILD_NUMBER=404111

PRODUCT_NAME := miui_crespo4g
PRODUCT_DEVICE := crespo4g
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus S 4G
PRODUCT_MANUFACTURER := Samsung