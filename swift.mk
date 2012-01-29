$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Should be after the full_base include, which loads languages_full
PRODUCT_LOCALES += ru_RU mdpi

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, device/lge/swift/swift-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/swift/overlay

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/lge/swift/prebuilt/kernel/zImage
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# copy all kernel modules to system/lib/modules
PRODUCT_COPY_FILES += $(shell test -d device/lge/swift/prebuilt/kernel/modules &&  \
	find device/lge/swift/prebuilt/kernel/modules -name '*.ko' \
	-printf '%p:system/lib/modules/%f ')

# Permission files
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml


PRODUCT_PACKAGES += \
	hwaddrs \
	gps.swift \
	gralloc.swift \
	copybit.swift \
	sensors.swift \
	camera.swift \
	libOmxCore \
	libmm-omxcore \
	libstagefrighthw \
	libopencorehw \
	audio.a2dp.default \
	audio.a2dp.swift \
	audio_policy.swift \
	audio.primary.swift \
	com.android.future.usb.accessory \
	FM \
	hcitool \

PRODUCT_PACKAGES += \
        librs_jni \
#        LiveWallpapers \
#        LiveWallpapersPicker \
#        VisualizationWallpapers \


PRODUCT_PROPERTY_OVERRIDES += \
	ro.com.google.locationfeatures=1 \
	ro.telephony.call_ring.multiple=false \
	ro.telephony.call_ring.delay=3000 \
	ro.url.safetylegal=http://4pda.ru/forum/index.php?showuser=1382803 \
	ro.com.android.dataroaming=false \
	persist.sys.strictmode.visual=0 \
	ro.config.disable_hw_accel=true \
	window_animation_scale=0 \
	transition_animation_scale=0 \
        net.dns1=8.8.8.8 \
        net.dns2=8.8.4.4 \

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.allow.mock.location=1 \
    ro.debuggable=1

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := swift
PRODUCT_DEVICE := swift
PRODUCT_MODEL := LG-GT540
