# config.mk
#
# Product-specific compile-time definitions.
#

# The generic product target doesn't have any hardware-specific pieces.
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := true

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_ABI := armeabi-v7a
TARGET_CPU_VARIANT := generic
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Build OpenGLES emulation guest and host libraries
BUILD_EMULATOR_OPENGL := false

# Build and enable the OpenGL ES View renderer. When running on the emulator,
# the GLES renderer disables itself if host GL acceleration isn't available.
USE_OPENGL_RENDERER := true

TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true
TARGET_USERIMAGES_USE_EXT4 := true
# Actually the data on system partition takes ~184M
# (+5M for the nvidia vendor files)
BOARD_SYSTEMIMAGE_PARTITION_SIZE := $(shell expr 512 \* 1024 \* 1024)
BOARD_USERDATAIMAGE_PARTITION_SIZE := $(shell expr 64 \* 1024 \* 1024)
BOARD_FLASH_BLOCK_SIZE := 4096

BOARD_HAVE_BLUETOOTH := false
BOARD_USES_GENERIC_AUDIO := true

# Wifi
WPA_SUPPLICANT_VERSION := VER_0_8_X

#BOARD_HAS_QCOM_WLAN := true
BOARD_WLAN_DEVICE := qcwcn
CONFIG_CTRL_IFACE := y

BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_PARAM := "/dev/null"
WIFI_DRIVER_FW_PATH_STA :=
WIFI_DRIVER_FW_PATH_AP  :=
