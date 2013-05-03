USE_CAMERA_STUB := false

# inherit from the proprietary version
-include vendor/pantech/ef12s/BoardConfigVendor.mk

TARGET_ARCH_VARIANT := armv7-a
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := 
TARGET_CPU_ABI := armeabi
TARGET_BOOTLOADER_BOARD_NAME := ef12s

BOARD_KERNEL_CMDLINE := console=ttyHS1 pmem_kernel_ebi1_size=0x200000 androidboot.hardware=qcom loglevel=0
BOARD_KERNEL_BASE := 0x20000000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00640000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00640000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x13d20000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x24800000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/pantech/ef12s/kernel

BOARD_HAS_FLIPPED_SCREEN := true

#BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true

#DEVICE_RESOLUTION := 480x800
