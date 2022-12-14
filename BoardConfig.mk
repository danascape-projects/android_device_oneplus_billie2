#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/oneplus/billie2

# Arch
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := lito
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_BOOT_HEADER_VERSION := 2

BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom
BOARD_KERNEL_CMDLINE += androidboot.console=ttyMSM0 androidboot.memcg=1
BOARD_KERNEL_CMDLINE += lpm_levels.sleep_disabled=1
BOARD_KERNEL_CMDLINE += video=vfb:640x400,bpp=32,memsize=3072000
BOARD_KERNEL_CMDLINE += msm_rtb.filter=0x237
BOARD_KERNEL_CMDLINE += service_locator.enable=1
BOARD_KERNEL_CMDLINE += swiotlb=2048
BOARD_KERNEL_CMDLINE += loop.max_part=7
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive

BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE :=  4096
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_SEPARATED_DTBO := true

BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_INCLUDE_DTB_IN_BOOTIMG := true

BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)

NEED_KERNEL_MODULE_VENDOR_OVERLAY := true

TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_CONFIG := vendor/billie2-perf_defconfig
TARGET_KERNEL_SOURCE := kernel/oneplus/sm4250

# Kernel modules - Audio
TARGET_MODULE_ALIASES += \
    snd_event_dlkm.ko:audio_snd_event.ko \
    aw87359_dlkm.ko:audio_aw87359.ko \
    aw87529_dlkm.ko:audio_aw87529.ko \
    rouleur_dlkm.ko:audio_rouleur.ko \
    sia81xx_dlkm.ko:audio_sia81xx.ko \
    wsa881x_analog_dlkm.ko:audio_wsa881x_analog.ko \
    rouleur_slave_dlkm.ko:audio_rouleur_slave.ko \
    bolero_cdc_dlkm.ko:audio_bolero_cdc.ko \
    wcd937x_slave_dlkm.ko:audio_wcd937x_slave.ko \
    q6_pdr_dlkm.ko:audio_q6_pdr.ko \
    q6_notifier_dlkm.ko:audio_q6_notifier.ko \
    va_macro_dlkm.ko:audio_va_macro.ko \
    swr_ctrl_dlkm.ko:audio_swr_ctrl.ko \
    adsp_loader_dlkm.ko:audio_adsp_loader.ko \
    swr_dlkm.ko:audio_swr.ko \
    wcd_core_dlkm.ko:audio_wcd_core.ko \
    wsa881x_analog_dlkm:audio_wsa881x_analog.ko \
    pinctrl_lpi_dlkm.ko:audio_pinctrl_lpi.ko \
    platform_dlkm.ko:audio_platform.ko \
    pm2250_spmi_dlkm.ko:audio_pm2250_spmi.ko \
    usf_dlkm.ko:audio_usf.ko \
    stub_dlkm.ko:audio_stub.ko \
    wcd9xxx_dlkm.ko:audio_wcd9xxx.ko \
    wcd937x_dlkm.ko:audio_wcd937x.ko \
    q6_dlkm.ko:audio_q6.ko \
    mbhc_dlkm.ko:audio_mbhc.ko \
    machine_dlkm.ko:audio_machine_bengal.ko \
    native_dlkm.ko:audio_native.ko \
    apr_dlkm.ko:audio_apr.ko \
    rx_macro_dlkm.ko:audio_rx_macro.ko \
    tx_macro_dlkm.ko:audio_tx_macro.ko

# DTBO partition definitions
BOARD_DTBOIMG_PARTITION_SIZE := 25165824

# Audio
USE_CUSTOM_AUDIO_POLICY := 1
USE_XML_AUDIO_POLICY_CONF := 1

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "qualcomm-hidl"

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include
TARGET_FWK_SUPPORTS_FULL_VALUEADDS := true

# Build
BUILD_BROKEN_DUP_RULES := true

# Charger
BOARD_CHARGER_DISABLE_INIT_BLANK := true

# Display
TARGET_SCREEN_DENSITY := 420

TARGET_USES_HWC2 := true

# DRM
TARGET_ENABLE_MEDIADRM_64 := true

# Filesystem
TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/config.fs

# Partitions - Metadata
BOARD_USES_METADATA_PARTITION := true

# Partitions - Boot
BOARD_BOOTIMAGE_PARTITION_SIZE := 100663296
BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)

# Partitions - Oneplus
BOARD_ONEPLUS_DYNAMIC_PARTITIONS_PARTITION_LIST := product system
BOARD_ONEPLUS_DYNAMIC_PARTITIONS_SIZE := 5364514816

# Partitions - Product
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4

TARGET_COPY_OUT_PRODUCT := product

# Partitions - Recovery
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 104857600

TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 80

# Partitions - Super
BOARD_SUPER_PARTITION_GROUPS := oneplus_dynamic_partitions
BOARD_SUPER_PARTITION_SIZE := 10737418240

# Partitions - System
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4

# Partitions - Userdata
BOARD_USERDATAIMAGE_PARTITION_SIZE := 48062869504

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

TARGET_USES_MKE2FS := true

# Partitions - Vendor
BUILD_WITHOUT_VENDOR := true

TARGET_COPY_OUT_VENDOR := vendor

# Platform
TARGET_BOARD_PLATFORM := lito
TARGET_BOARD_PLATFORM_GPU := qcom-adreno610

# Properties
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/product.prop
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Sepolicy - billie
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/private
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# Sepolicy - Common
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/qcom/sepolicy/generic/private \
    device/qcom/sepolicy/qva/private

BOARD_PLAT_PUBLIC_SEPOLICY_DIR += \
    device/qcom/sepolicy/generic/public \
    device/qcom/sepolicy/qva/public

# Treble
BOARD_VNDK_VERSION := current

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --set_hashtree_disabled_flag
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 2
BOARD_AVB_VBMETA_SYSTEM := product system
BOARD_AVB_VBMETA_SYSTEM_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_VBMETA_SYSTEM_ALGORITHM := SHA256_RSA2048
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX_LOCATION := 1

# Inherit from the proprietary version
include vendor/oneplus/billie2/BoardConfigVendor.mk
