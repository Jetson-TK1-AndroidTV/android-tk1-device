ifdef ARMV7_CORTEX_A_BOARD

LOCAL_PATH := $(call my-dir)
include $(LOCAL_PATH)/utils.mk

$(call sed-filter, root/init.rc, 's|import /init\...ro\.hardware.\.rc|import /init.generic.rc|')
$(call create-symlink, /init, root/sbin/init, root/init)

include $(all-subdir-makefiles)

endif
