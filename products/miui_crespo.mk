$(call inherit-product, device/samsung/crespo/full_crespo.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/patchrom/config/common_full_phone.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/patchrom/config/gsm.mk)

PRODUCT_COPY_FILES +=  \
    vendor/patchrom/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

# Release name
PRODUCT_RELEASE_NAME := NS

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=full_crespo BUILD_FINGERPRINT=google/full_crespo/crespo:MIUI-4.0.4/IMM76D/404110:user/release-keys PRIVATE_BUILD_DESC="full_crespo-user MIUI-4.0.4 IMM76D 299849 release-keys" BUILD_NUMBER=404110

PRODUCT_NAME := miui_crespo
PRODUCT_DEVICE := full_crespo
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus S
PRODUCT_MANUFACTURER := Samsung