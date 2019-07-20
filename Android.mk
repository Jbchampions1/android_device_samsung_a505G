ifneq ($(filter a505fn,$(TARGET_DEVICE)),)

LOCAL_PATH := device/samsung/a505fn/

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
