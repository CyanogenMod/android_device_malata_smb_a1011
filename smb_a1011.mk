$(call inherit-product, device/malata/smb-common/smb-common.mk)

$(call inherit-product-if-exists, vendor/malata/smb_a1011/smb_a1011-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/malata/smb_a1011/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/malata/smb_a1011/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel


PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.a1011.rc:root/init.a1011.rc \
    $(LOCAL_PATH)/ueventd.nvidia.rc:root/ueventd.nvidia.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/bcm4329.ko:system/lib/modules/bcm4329.ko \
    $(LOCAL_PATH)/excluded-input-devices.xml:/system/etc/excluded-input-devices.xml

PRODUCT_NAME := full_smb_a1011
PRODUCT_DEVICE := smb_a1011
