# Board-specific init 
PRODUCT_COPY_FILES += device/lge/swift/files/init.rc:root/init.rc
PRODUCT_COPY_FILES += device/lge/swift/files/init.swift.rc:root/init.swift.rc
#PRODUCT_COPY_FILES += device/lge/swift/files/init.swift.rc:root/init.swift.usb.rc
PRODUCT_COPY_FILES += device/lge/swift/files/ueventd.swift.rc:root/ueventd.swift.rc

CHARGERMODE := false

ifdef CHARGERMODE

PRODUCT_COPY_FILES += \
	device/lge/swift/chargemode/chargerimages/battery_ani_01.rle:root/chargerimages/battery_ani_01.rle \
    device/lge/swift/chargemode/chargerimages/battery_ani_02.rle:root/chargerimages/battery_ani_02.rle \
    device/lge/swift/chargemode/chargerimages/battery_ani_03.rle:root/chargerimages/battery_ani_03.rle \
    device/lge/swift/chargemode/chargerimages/battery_ani_04.rle:root/chargerimages/battery_ani_04.rle \
    device/lge/swift/chargemode/chargerimages/battery_ani_05.rle:root/chargerimages/battery_ani_05.rle \
    device/lge/swift/chargemode/chargerimages/battery_bg.rle:root/chargerimages/battery_bg.rle \
    device/lge/swift/chargemode/chargerimages/battery_charging_01.rle:root/chargerimages/battery_charging_01.rle \
    device/lge/swift/chargemode/chargerimages/battery_charging_02.rle:root/chargerimages/battery_charging_02.rle \
    device/lge/swift/chargemode/chargerimages/battery_charging_03.rle:root/chargerimages/battery_charging_03.rle \
    device/lge/swift/chargemode/chargerimages/battery_charging_04.rle:root/chargerimages/battery_charging_04.rle \
    device/lge/swift/chargemode/chargerimages/battery_charging_05.rle:root/chargerimages/battery_charging_05.rle \
    device/lge/swift/chargemode/chargerimages/battery_charging_06.rle:root/chargerimages/battery_charging_06.rle \
    device/lge/swift/chargemode/chargerimages/battery_wait_ani_01.rle:root/chargerimages/battery_wait_ani_01.rle \
    device/lge/swift/chargemode/chargerimages/battery_wait_ani_02.rle:root/chargerimages/battery_wait_ani_02.rle \
    device/lge/swift/chargemode/chargerimages/black_bg.rle:root/chargerimages/black_bg.rle \
	device/lge/swift/chargemode/chargerlogo:root/sbin/chargerlogo

endif	
	
# etc
PRODUCT_COPY_FILES += \
	device/lge/swift/prebuilt/etc/hosts:system/etc/hosts \
	device/lge/swift/prebuilt/etc/resolv.conf:system/etc/resolv.conf \
	device/lge/swift/prebuilt/etc/vold.fstab:/system/etc/vold.fstab \
	device/lge/swift/prebuilt/etc/init.d/07swapon:system/etc/init.d/07swapon \

# OMX proprietaries
PRODUCT_COPY_FILES += \
	device/lge/swift/proprietary/lib/omx/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
	device/lge/swift/proprietary/lib/omx/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
	device/lge/swift/proprietary/lib/omx/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
	device/lge/swift/proprietary/lib/omx/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
	device/lge/swift/proprietary/lib/omx/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \
	device/lge/swift/proprietary/lib/omx/libOmxAacDec.so:system/lib/libOmxAacDec.so \
	device/lge/swift/proprietary/lib/omx/libOmxAmrDec.so:system/lib/libOmxAmrDec.so \
	device/lge/swift/proprietary/lib/omx/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \
	device/lge/swift/proprietary/lib/omx/libOmxAmrRtpDec.so:system/lib/libOmxAmrRtpDec.so \
	device/lge/swift/proprietary/lib/omx/libOmxAmrwbDec.so:system/lib/libOmxAmrwbDec.so \
	device/lge/swift/proprietary/lib/omx/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \
	device/lge/swift/proprietary/lib/omx/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \
	device/lge/swift/proprietary/lib/omx/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \
	device/lge/swift/proprietary/lib/omx/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \
	device/lge/swift/proprietary/lib/omx/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \
	device/lge/swift/proprietary/lib/omx/libOmxQcelpDec.so:system/lib/libOmxQcelpDec.so \
	device/lge/swift/proprietary/lib/omx/libOmxWmaDec.so:system/lib/libOmxWmaDec.so \
	device/lge/swift/proprietary/lib/omx/libOmxWmvDec.so:system/lib/libOmxWmvDec.so \

# Audio 
PRODUCT_COPY_FILES += \
	device/lge/swift/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
	device/lge/swift/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
	device/lge/swift/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
	device/lge/swift/proprietary/lib/libaudioeq.so:system/lib/libaudioeq.so \
	
# Camera proprietaries
PRODUCT_COPY_FILES += \
	device/lge/swift/proprietary/lib/camera/liboemcamera.so:system/lib/liboemcamera.so \
	device/lge/swift/proprietary/lib/camera/libmmjpeg.so:system/lib/libmmjpeg.so \
	device/lge/swift/proprietary/lib/camera/libmmipl.so:system/lib/libmmipl.so \
	device/lge/swift/proprietary/lib/camera/libcamera.so:system/lib/libcamera.so \
	device/lge/swift/proprietary/lib/camera/libcamera.so:obj/lib/libcamera.so \

# RIL
PRODUCT_COPY_FILES += \
	device/lge/swift/proprietary/lib/ril/libauth.so:system/lib/libauth.so \
	device/lge/swift/proprietary/lib/ril/libbcmwl.so:system/lib/libbcmwl.so \
	device/lge/swift/proprietary/lib/ril/libcm.so:system/lib/libcm.so \
	device/lge/swift/proprietary/lib/ril/libdiag.so:system/lib/libdiag.so \
	device/lge/swift/proprietary/lib/ril/libdll.so:system/lib/libdll.so \
	device/lge/swift/proprietary/lib/ril/libdsm.so:system/lib/libdsm.so \
	device/lge/swift/proprietary/lib/ril/libdss.so:system/lib/libdss.so \
	device/lge/swift/proprietary/lib/ril/libgsdi_exp.so:system/lib/libgsdi_exp.so \
	device/lge/swift/proprietary/lib/ril/libgstk_exp.so:system/lib/libgstk_exp.so \
	device/lge/swift/proprietary/lib/ril/libmmgsdilib.so:system/lib/libmmgsdilib.so \
	device/lge/swift/proprietary/lib/ril/libnv.so:system/lib/libnv.so \
	device/lge/swift/proprietary/lib/ril/liboem_rapi.so:system/lib/liboem_rapi.so \
	device/lge/swift/proprietary/lib/ril/liboncrpc.so:system/lib/liboncrpc.so \
	device/lge/swift/proprietary/lib/ril/libpbmlib.so:system/lib/libpbmlib.so \
	device/lge/swift/proprietary/lib/ril/libqmi.so:system/lib/libqmi.so \
	device/lge/swift/proprietary/lib/ril/libqueue.so:system/lib/libqueue.so \
	device/lge/swift/proprietary/lib/ril/libril_log.so:system/lib/libril_log.so \
	device/lge/swift/proprietary/lib/ril/libril-qc-1.so:system/lib/libril-qc-1.so \
	device/lge/swift/proprietary/lib/ril/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \
	device/lge/swift/proprietary/lib/ril/libwms.so:system/lib/libwms.so \
	device/lge/swift/proprietary/lib/ril/libwmsts.so:system/lib/libwmsts.so \
	device/lge/swift/proprietary/lib/ril/liblgdrm.so:system/lib/liblgdrm.so \
	device/lge/swift/proprietary/lib/ril/liblgdrmwbxml.so:system/lib/liblgdrmwbxml.so \
	device/lge/swift/proprietary/lib/ril/liblgeat.so:system/lib/liblgeat.so \
	device/lge/swift/proprietary/lib/ril/liblgerft.so:system/lib/liblgerft.so \
	device/lge/swift/proprietary/lib/ril/libril.so:system/lib/libril.so

# LGE services
PRODUCT_COPY_FILES += \
	device/lge/swift/proprietary/akmd2:system/bin/akmd2 \
	device/lge/swift/proprietary/qmuxd:system/bin/qmuxd \
	device/lge/swift/proprietary/wl:system/bin/wl \
	device/lge/swift/proprietary/rild:system/bin/rild \
	
# GPS
PRODUCT_COPY_FILES += \
	device/lge/swift/prebuilt/etc/gps.conf:system/etc/gps.conf \
	device/lge/swift/proprietary/lib/gps/libcommondefs.so:system/lib/libcommondefs.so \
	device/lge/swift/proprietary/lib/gps/libgps.so:system/lib/libgps.so \
	device/lge/swift/proprietary/lib/gps/libloc_api.so:system/lib/libloc_api.so \
	device/lge/swift/proprietary/lib/gps/libloc-rpc.so:system/lib/libloc-rpc.so \
	device/lge/swift/proprietary/lib/gps/libloc.so:system/lib/libloc.so \
	device/lge/swift/proprietary/lib/gps/libloc.so:obj/lib/libloc.so \

# Bluetooth
PRODUCT_COPY_FILES += \
	device/lge/swift/proprietary/bluetooth/BCM4325D1_004.002.004.0262.0270.hcd:system/bin/BCM4325D1_004.002.004.0262.0270.hcd \
	device/lge/swift/proprietary/bluetooth/btld:system/bin/btld \

# Wifi
PRODUCT_COPY_FILES += \
	device/lge/swift/prebuilt/etc/wl/rtecdc.bin:system/etc/wl/rtecdc.bin \
	device/lge/swift/prebuilt/etc/wl/rtecdc-apsta.bin:system/etc/wl/rtecdc-apsta.bin \
	device/lge/swift/prebuilt/etc/wl/nvram.txt:system/etc/wl/nvram.txt \
	device/lge/swift/prebuilt/etc/wl/rtecdc-mfgtest.bin:system/etc/wl/rtecdc-mfgtest.bin \
	device/lge/swift/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
	device/lge/swift/prebuilt/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
	
# Keylayouts
PRODUCT_COPY_FILES += \
	device/lge/swift/prebuilt/keychars/msm_touchscreen.kcm.bin:system/usr/keychars/msm_touchscreen.kcm.bin \
	device/lge/swift/prebuilt/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
	device/lge/swift/prebuilt/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
	device/lge/swift/prebuilt/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
	device/lge/swift/prebuilt/keylayout/7k_headset.kl:system/usr/keylayout/7k_headset.kl \
	device/lge/swift/prebuilt/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
	device/lge/swift/prebuilt/keylayout/swift.kl:system/usr/keylayout/swift.kl \
	device/lge/swift/prebuilt/keylayout/swift_keypad.kl:system/usr/keylayout/swift_keypad.kl \
	device/lge/swift/prebuilt/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
	device/lge/swift/prebuilt/keylayout/msm_touchscreen.kl:system/usr/keylayout/msm_touchscreen.kl \
	device/lge/swift/prebuilt/idc/msm_touchscreen.idc:system/usr/idc/msm_touchscreen.idc \
	device/lge/swift/prebuilt/keychars/swift_touchscreen.kcm.bin:system/usr/keychars/swift_touchscreen.kcm.bin \
	device/lge/swift/prebuilt/keylayout/swift_touchscreen.kl:system/usr/keylayout/swift_touchscreen.kl \
	device/lge/swift/prebuilt/keylayout/7x27_kybd.kl:system/usr/keylayout/7x27_kybd.kl \

# OpenGL
PRODUCT_COPY_FILES += \
	device/lge/swift/proprietary/lib/egl/egl.cfg:system/lib/egl/egl.cfg \
	device/lge/swift/prebuilt/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
	device/lge/swift/proprietary/lib/egl/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
	device/lge/swift/proprietary/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
	device/lge/swift/proprietary/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
	device/lge/swift/proprietary/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
	device/lge/swift/proprietary/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
	device/lge/swift/proprietary/lib/egl/libgsl.so:system/lib/libgsl.so \

# HW
PRODUCT_COPY_FILES += \
	device/lge/swift/proprietary/lib/lights.swift.so:system/lib/hw/lights.swift.so \
	device/lge/swift/proprietary/lib/sensors.swift.so:system/lib/hw/sensors.swift.so \
	
# Custom apps
PRODUCT_COPY_FILES += \
	device/lge/swift/prebuilt/apps/RootExplorer.apk:system/app/RootExplorer.apk \
	device/lge/swift/prebuilt/apps/Homeselector.apk:system/app/Homeselector.apk \
	device/lge/swift/prebuilt/apps/usbstorage.apk:system/app/usbstorage.apk \

SWIFT_WITH_GOOGLE := false

ifdef SWIFT_WITH_GOOGLE

    # use all present proprietary apk
    PRODUCT_COPY_FILES += $(shell find device/lge/swift/prebuilt/googleapps -name '*.apk' \
	-printf '%p:system/app/%f ')

    # use all present proprietary lib
    PRODUCT_COPY_FILES += $(shell find device/lge/swift/prebuilt/googleapps -name '*.so' \
	-printf '%p:system/lib/%f ')

    # use all present proprietary jar
    PRODUCT_COPY_FILES += $(shell find device/lge/swift/prebuilt/googleapps -name '*.jar' \
	-printf '%p:system/framework/%f ')

    # use all present proprietary xml (permissions)
    PRODUCT_COPY_FILES += $(shell find device/lge/swift/prebuilt/googleapps -name '*.xml' \
	-printf '%p:system/etc/permissions/%f ')

endif
