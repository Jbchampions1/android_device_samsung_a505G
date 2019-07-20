$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
    charger_res_images \
    charger

PRODUCT_COPY_FILES += \
    device/samsung/a505fn/recovery.fstab:recovery/root/recovery.fstab \
    device/samsung/a505fn/init.recovery.exynos9610.rc:recovery/root/init.recovery.exynos9610.rc

#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

PRODUCT_DEVICE := a505fn
PRODUCT_NAME := omni_a505fn
PRODUCT_BRAND := samsung
PRODUCT_MODEL := a505fn
PRODUCT_MANUFACTURER := samsung
