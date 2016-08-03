include device/antmicro/armv7_cortex_a/aosp_generic.mk
# --- Product and target specification ---------------------------------------

PRODUCT_BRAND := generic
PRODUCT_NAME := $(ARMV7_CORTEX_A_BOARD)
PRODUCT_DEVICE := armv7_cortex_a
PRODUCT_MODEL := $(ARMV7_CORTEX_A_MODEL)

TARGET_BOOTLOADER_BOARD_NAME := $(ARMV7_CORTEX_A_BOARD)
TARGET_BOARD_PLATFORM := $(ARMV7_CORTEX_A_BOARD)

PRODUCT_CHARACTERISTICS := tablet

# --- Languages included in a build ------------------------------------------

PRODUCT_LOCALES := en_US

# --- LCD and UI -------------------------------------------------------------

PRODUCT_AAPT_CONFIG := ldpi mdpi tvdpi hdpi xhdpi normal large
PRODUCT_AAPT_PREF_CONFIG := mdpi

# Default DPI, overriden by installer when needed
PRODUCT_PROPERTY_OVERRIDES += ro.sf.lcd_density=140
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.screen.landscape.xml:system/etc/permissions/android.hardware.screen.landscape.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml

# Install multitouch IDC files for these touchscreens:
ARMV7_CORTEX_A_LCD_NAME += EP0700M06
ARMV7_CORTEX_A_LCD_NAME += fusion_F0710A

$(foreach lcd,$(ARMV7_CORTEX_A_LCD_NAME), \
	$(eval PRODUCT_COPY_FILES += device/antmicro/armv7_cortex_a/files/touch.idc:system/usr/idc/$(lcd).idc))

PRODUCT_COPY_FILES += device/antmicro/armv7_cortex_a/files/touch_stmpe.idc:system/usr/idc/stmpe-ts.idc

# --- Graphics ---------------------------------------------------------------

PRODUCT_PROPERTY_OVERRIDES += ro.opengles.version=131072
PRODUCT_PROPERTY_OVERRIDES += ro.zygote.disable_gl_preload=true
# prevent screen flickering
PRODUCT_PROPERTY_OVERRIDES += debug.hwui.render_dirty_regions=false
# GPU producer to CPU consumer not supported
PRODUCT_PROPERTY_OVERRIDES += ro.bq.gpu_to_cpu_unsupported=1
# Render UI with GPU
PRODUCT_PROPERTY_OVERRIDES += debug.sf.hw=1
PRODUCT_PROPERTY_OVERRIDES += debug.composition.type=gpu

# --- Ethernet support -------------------------------------------------------

PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml

# --- Launcher ---------------------------------------------------------------

PRODUCT_PACKAGES += Launcher3
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.software.app_widgets.xml:system/etc/permissions/android.software.app_widgets.xml

# --- Important packages -----------------------------------------------------

PRODUCT_PACKAGES += \
	libfwdlockengine

PRODUCT_PACKAGES += libion

# --- Optional packages ------------------------------------------------------

# It is safe to remove any of these packages. Most of them are an animated
# wallpapers.
PRODUCT_PACKAGES += \
	Galaxy4 \
	HoloSpiralWallpaper \
	LiveWallpapers \
	LiveWallpapersPicker \
	MagicSmokeWallpapers \
	NoiseField \
	PhaseBeam \
	VisualizationWallpapers \
	PhotoTable

# --- Misc -------------------------------------------------------------------

PRODUCT_PACKAGES += libhardware_legacy
PRODUCT_PACKAGES += libwpa_client
PRODUCT_PACKAGES += hostapd
PRODUCT_PACKAGES += dhcpcd.conf
PRODUCT_PACKAGES += wpa_supplicant
PRODUCT_PACKAGES += wpa_supplicant.conf

PRODUCT_COPY_FILES += device/antmicro/armv7_cortex_a/files/wpa_supplicant_overlay.conf:/system/etc/wifi/wpa_supplicant_overlay.conf

PRODUCT_COPY_FILES += device/antmicro/armv7_cortex_a/files/fw/htc_9271.fw:system/etc/firmware/htc_9271.fw
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml

PRODUCT_COPY_FILES += frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml
PRODUCT_COPY_FILES += frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml
PRODUCT_COPY_FILES += frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# Prevent 'settings/backup & reset' and 'settings/developer options' from crashing
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.software.backup.xml:system/etc/permissions/android.software.backup.xml
# Prevent 'application details' from crashing
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml
# No mobile network
PRODUCT_PROPERTY_OVERRIDES += ro.carrier=wifi-only

include frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk

DEVICE_PACKAGE_OVERLAYS += device/antmicro/armv7_cortex_a/overlay

PRODUCT_COPY_FILES += device/antmicro/armv7_cortex_a/files/init.generic.rc:root/init.generic.rc
PRODUCT_COPY_FILES += device/antmicro/armv7_cortex_a/files/fstab.generic:root/fstab.generic

