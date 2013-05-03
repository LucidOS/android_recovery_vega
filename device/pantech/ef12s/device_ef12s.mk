$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/pantech/ef12s/ef12s-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/pantech/ef12s/overlay

# KoreanIME
PRODUCT_COPY_FILES += \
    device/pantech/a630k/files/libjni_koreanime.so:system/lib/libjni_koreanime.so \
    device/pantech/a630k/files/KoreanIME.apk:system/app/LatinIME.apk

# SetCpu
PRODUCT_COPY_FILES += \
    device/pantech/a630k/files/libsetcpu-native.so:system/lib/libsetcpu-native.so \
    device/pantech/a630k/files/SetCpu.apk:system/app/SetCpu.apk

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/pantech/ef12s/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

# Logo.rle
PRODUCT_COPY_FILES += \
device/pantech/ef12s/logo.rle:root/logo.rle \
device/pantech/ef12s/logo.rle:root/initlogo.rle

# Graphic
BOARD_CUSTOM_GRAPHICS := ../../../device/pantech/ef12s/graphics.c

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_ef12s
PRODUCT_DEVICE := ef12s
