# Inherit common stuff
$(call inherit-product, vendor/eic/config/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/patchrom/overlay/phone

# Bring in all ICS audio files
include frameworks/base/data/sounds/AudioPackage7.mk

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Girtab.ogg \
    ro.config.notification_sound=Proxima.ogg \
    ro.config.alarm_alert=Cesium.ogg

PRODUCT_PACKAGES += \
    Mms \
    SpeakerProximity
