# LG GT540

TARGET_GLOBAL_CFLAGS += -mfpu=vfp -mfloat-abi=softfp -Os
TARGET_GLOBAL_CPPFLAGS += -mfpu=vfp -mfloat-abi=softfp -Os

# BOARD PROPERTIES
TARGET_BOARD_PLATFORM := msm7x27
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_CPU_ABI := armeabi
TARGET_ARCH_VARIANT := armv6-vfp

# BOOTLOADER
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := swift
TARGET_OTA_ASSERT_DEVICE := swift,gt540

# PARTITIONS
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0f500000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x08a80000
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_HAS_NO_SELECT_BUTTON := true

# AUDIO
TARGET_PROVIDES_LIBAUDIO := true

# BLUETOOTH
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_CUSTOM_BRCM_PATCHRAM_PLUS := ../../../device/lge/swift/prebuilt/brcm_patchram_plus.c

# CAMERA
#USE_CAMERA_STUB := false
USE_CAMERA_STUB := true
BOARD_CAMERA_USE_GETBUFFERINFO := true
BOARD_USE_CAF_LIBCAMERA := true

# FM RADIO
BOARD_FM_DEVICE := bcm4325
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := swift
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240

# GRAPHICS
BOARD_EGL_CFG := device/lge/swift/proprietary/lib/egl/egl.cfg
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true

# GSM RADIO
TARGET_PROVIDES_LIBRIL := true

# HEADERS
TARGET_SPECIFIC_HEADER_PATH := device/lge/swift/include

# USB
BOARD_UMS_LUNFILE := "/sys/devices/platform/usb_mass_storage/lun0/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/usb_mass_storage/lun0/file

# KERNEL
TARGET_PREBUILT_KERNEL := device/lge/swift/kernel
BOARD_KERNEL_CMDLINE :=  mem=214M console=ttyMSM2,115200n8 androidboot.hardware=swift uart.mode=arm11_uart_disable crash=off
BOARD_KERNEL_BASE := 0x00200000
BOARD_PAGE_SIZE := 0x00000800

# QUALCOMM
BOARD_USES_QCOM_HARDWARE := false
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_LEGACY := true

# WIFI
BOARD_WLAN_DEVICE := bcm4325
BOARD_WIRELESS_CHIP := bcm4325
WIFI_DRIVER_FW_STA_PATH         := "/system/etc/wl/rtecdc.bin"
WIFI_DRIVER_FW_AP_PATH          := "/system/etc/wl/rtecdc-apsta.bin"
WIFI_DRIVER_MODULE_NAME         := "wireless"
WIFI_DRIVER_MODULE_PATH         := "/system/lib/modules/wireless.ko"
WIFI_DRIVER_MODULE_ARG          := "iface_name=wlan0 firmware_path=/etc/wl/rtecdc.bin nvram_path=/etc/wl/nvram.txt"
WPA_SUPPLICANT_VERSION          := VER_0_5_X
WIFI_DRIVER_HAS_LGE_SOFTAP      := true
#BOARD_WEXT_NO_COMBO_SCAN        := true
BOARD_WPA_SUPPLICANT_DRIVER     := WEXT

# CHARGERMODE
BOARD_GLOBAL_CFLAGS += -DCHARGERMODE_CMDLINE_NAME='"lge.reboot"' -DCHARGERMODE_CMDLINE_VALUE='"pwroff"'

# ICS FLAGS
DISABLE_DEXPREOPT := true
BOARD_NO_PAGE_FLIPPING := true
USE_OPENGL_RENDERER := false
COPYBIT_MSM7K := true
BOARD_USE_LEGACY_TOUCHSCREEN := true
BOARD_VENDOR_USE_AKMD := akm8973
TARGET_FORCE_CPU_UPLOAD := true
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
WITH_JIT := true
#JS_ENGINE := v8
#BUILD_WITH_FULL_STAGEFRIGHT := true

COMMON_GLOBAL_CFLAGS += -DTARGET_MSM7x27 -DNO_RGBX_8888
COMMON_GLOBAL_CFLAGS += -DMISSING_EGL_EXTERNAL_IMAGE -DMISSING_GRALLOC_BUFFERS
COMMON_GLOBAL_CFLAGS += -DMISSING_EGL_PIXEL_FORMAT_YV12
COMMON_GLOBAL_CFLAGS += -DBOARD_GL_OES_EGL_IMG_EXTERNAL_HACK 
COMMON_GLOBAL_CFLAGS += -D_INTERNAL_BINDER_PARCEL_ -DUSE_LGE_ALS_DUMMY