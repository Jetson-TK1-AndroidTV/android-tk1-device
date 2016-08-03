#--- Target adjustments ------------------------------------------------------

# End-user-visible name for the overall product. Appears in the "About the
# phone" info.
ARMV7_CORTEX_A_MODEL := Tegra K1 Generic Board

#-----------------------------------------------------------------------------
# Do not change anything below

ARMV7_CORTEX_A_BOARD := tegrak1
TEGRA_TOP := vendor/nvidia/tegra
REFERENCE_DEVICE := shieldtablet

$(call inherit-product-if-exists, vendor/nvidia/tegra/core/android/t124/full.mk)
$(call inherit-product-if-exists, vendor/nvidia/tegra/core/nvidia-tegra-vendor.mk)
$(call inherit-product, device/antmicro/armv7_cortex_a/armv7_cortex_a.mk)

#--- Platform-specific settings ----------------------------------------------

PRODUCT_COPY_FILES += device/antmicro/tegrak1/files/fstab.tegra:root/fstab.tegra
PRODUCT_COPY_FILES += device/antmicro/tegrak1/files/init.tegra.rc:root/init.tegra.rc
PRODUCT_COPY_FILES += device/antmicro/tegrak1/files/ueventd.tegra.rc:root/ueventd.tegra.rc
PRODUCT_COPY_FILES += device/antmicro/tegrak1/files/init.tegra.usb.rc:root/init.tegra.usb.rc
PRODUCT_COPY_FILES += device/antmicro/tegrak1/files/media_codecs.xml:system/etc/media_codecs.xml

