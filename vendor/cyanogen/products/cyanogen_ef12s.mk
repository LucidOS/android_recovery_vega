# Inherit AOSP device configuration for a630k.
$(call inherit-product, device/pantech/ef12s/device_ef12s.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_ef12sk
PRODUCT_BRAND := SKY
PRODUCT_DEVICE := ef12s
PRODUCT_MODEL := SKY Vega
PRODUCT_MANUFACTURER := Pantech
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=a630k BUILD_ID=GWK74 BUILD_FINGERPRINT=pantech/ef12s/ef12s:2.3.7/GWK74/185293:user/release-keys PRIVATE_BUILD_DESC="ef12s-user 2.3.7 GWK74 185293 release-keys" BUILD_NUMBER=185293

# Broadcom FM radio
#$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

# Release name and versioning
PRODUCT_RELEASE_NAME := ef12s
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

#
# Copy passion specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip
