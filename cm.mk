# Include GSM stuff
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit device configuration for GT540.
$(call inherit-product, device/lge/swift/swift.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Include FM-Radio stuff
#$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

PRODUCT_NAME := cm_swift
PRODUCT_BRAND := lge
PRODUCT_DEVICE := swift
PRODUCT_MODEL := LG-GT540
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_ID=GRI40 \
    PRIVATE_BUILD_DESC="swift-user 2.3.3 GRI40 LG-GT540-V20E release-keys" \
    BUILD_FINGERPRINT=lge/swift/swift:2.3.3/GRI40/LG-GT540-V20E:user/release-keys

# Release name and versioning
PRODUCT_RELEASE_NAME := IceCreamSwift
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk
