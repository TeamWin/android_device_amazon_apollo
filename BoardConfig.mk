# inherit from common hdx
-include device/amazon/hdx-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/amazon/hdx-common/BoardConfigVendor.mk

# Kernel
ifeq ($(TARGET_BUILD_VARIANT),eng)
TARGET_KERNEL_CONFIG := apollo_eng_defconfig
else
TARGET_KERNEL_CONFIG := apollo_defconfig
endif
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 mdss_mdp.panel=0:qcom,mdss_dsi_jdi_dualmipi0_video:1:qcom,mdss_dsi_jdi_dualmipi1_video:

# Assert
TARGET_OTA_ASSERT_DEVICE := apollo

# TWRP
DEVICE_RESOLUTION := 2560x1600
RECOVERY_TOUCHSCREEN_SWAP_XY := true
RECOVERY_TOUCHSCREEN_FLIP_X := true
