# inherit from the common version
-include device/malata/smb-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/malata/smb_a1011/BoardConfigVendor.mk

TARGET_OTA_ASSERT_DEVICE := harmony,smb_a1011


TARGET_BOOTLOADER_BOARD_NAME := a1011

BOARD_KERNEL_CMDLINE := mem=448M@0M nvmem=64M@448M mem=512M@512M vmalloc=192M video=tegrafb console=tty0 usbcore.old_scheme_first=1 cpuid=200102 devicetype=1002 tegraboot=nand mtdparts=tegra_nand:16384K@12032K(misc),16384K@62208K(recovery),16384K@79360K(boot),204800K@96256K(system),222208K@301568K(cache),4096K@7424K(bootbmp),32768K@28928K(logodata) androidboot.hardware=a1011


TARGET_PREBUILT_KERNEL := device/malata/smb_a1011/kernel

# Wifi related defines
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/etc/firmware/fw_bcm4329.bin nvram_path=/system/etc/firmware/nvram.txt"

# EGL config 
TARGET_LIBAGL_USE_GRALLOC_COPYBITS :=

BOARD_USES_GPSSHIM := true
BOARD_GPS_LIBRARIES := libgps
BOARD_GPS_BAD_AGPS := true

## Not present?
USE_CAMERA_STUB := true
#BOARD_USE_FROYO_LIBCAMERA := true
#BOARD_FIRST_CAMERA_FRONT_FACING := true

#BOARD_USES_HW_MEDIASCANNER := true
#BOARD_USES_HW_MEDIAPLUGINS := true

BOARD_USES_FROYO_AUDIOPOLICY := true
