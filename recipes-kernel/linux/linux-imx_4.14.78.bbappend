FSL_KERNEL_DEFCONFIG_IMX6  = "lec-imx6_defconfig"
FSL_KERNEL_DEFCONFIG_IMX8m = "lec-imx8m_defconfig"


do_copy_defconfig() {

if ${@bb.utils.contains('TARGET_ARCH', 'arm', 'true', 'false', d)}; then # LEC-i.MX6
    cp ${WORKDIR}/${FSL_KERNEL_DEFCONFIG_IMX6} ${S}/arch/arm/configs/
    cp ${S}/arch/arm/configs/${FSL_KERNEL_DEFCONFIG_IMX6} ${B}/.config
    cp ${S}/arch/arm/configs/${FSL_KERNEL_DEFCONFIG_IMX6} ${B}/../defconfig

fi

if ${@bb.utils.contains('TARGET_ARCH', 'aarch64', 'true', 'false', d)}; then # LEC-i.MX8m
    cp ${WORKDIR}/${FSL_KERNEL_DEFCONFIG_IMX8m} ${S}/arch/arm64/configs/
    cp ${S}/arch/arm64/configs/${FSL_KERNEL_DEFCONFIG_IMX8m} ${B}/.config
    cp ${S}/arch/arm64/configs/${FSL_KERNEL_DEFCONFIG_IMX8m} ${B}/../defconfig
fi

}

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append_lec-imx6-1 += " \
			    file://0001-Add-user-kernel-split-Kconfig-options-for-full-1-or-.patch \
			    file://0002-Fork-imx6q-dl-sabresd-to-create-lec-imx6q-s.patch \
			    file://0003-Add-instructive-comments.patch \
			    file://0004-Improve-SD-MMC-power-consumption-and-speed.patch \
			    file://0005-pci-imx6.c-add-config-option-to-force-GEN1-speed.patch \
			    file://0006-Fix-heavy-flickering-when-moving-camera-window.patch \
			    file://0007-Work-around-OV564x-cameras-blocking-I2C-bus.patch \
			    file://0008-Fix-and-streamline-TLV320AIC23-drivers.patch \
			    file://0009-Create-DT-option-to-make-HDMI-accept-non-CEA-modes-f.patch \
			    file://0010-Fix-suspend-to-RAM-issues.patch \
			    file://0011-Raise-default-thermal-trip-point-0-to-throttle-only-.patch \
			    file://0012-Set-up-defaults-for-cross-compiling-for-ARM.patch \
			    file://0013-Clarify-kernel-message-indicating-the-CPU-variant.patch \
			    file://0014-Ethernet-is-subtly-different.patch \
			    file://0015-Adapt-camera-interfaces.patch \
			    file://0016-optimize-compile-when-6Q-SL-SX-UL-7D-support-is-disa.patch \
			    file://0017-Add-SST-26VF064B-SPI-flash-support.patch \
			    file://0018-Try-to-fix-panic-when-sound-driver-is-shut-down.patch \
			    file://0019-Add-DT-node-for-Media-Local-Bus-MLB.patch \
			    file://0020-Different-battery-charger-on-the-LEC-Base-R1-carrier.patch \
			    file://0021-Adapt-LVDS-and-parallel-RGB-panel-interfaces.patch \
			    file://0022-SATA-signal-parameters-can-be-tuned.patch \
			    file://0023-Change-copyright-references-names.patch \
			    file://0024-We-have-either-SPI0-or-I2S0-depending-on-mux.patch \
			    file://0025-Add-option-to-activate-alternative-coda-VPU-driver.patch \
			    file://0027-Our-PWM-backlight-has-an-enable-pin-but-no-CABC.patch \
			    file://0028-We-don-t-need-stdout-path-in-chosen-node.patch \
			    file://0029-Most-GPIOs-differ-clear-hog-misc.-pinmux-device.patch \
			    file://0030-A-USB-hub-and-shared-power-enable-over-current-compl.patch \
			    file://0031-Our-SD-MMC-interfaces-are-used-differently.patch \
			    file://0032-PCIe-uses-a-switch-and-other-minor-changes.patch \
			    file://0033-Drop-I2C-devices-our-boards-don-t-implement.patch \
			    file://0034-We-can-t-use-the-MIPI-DSI-display-interface.patch \
			    file://0035-Different-button-functions-on-GPIOs.patch \
			    file://0036-Set-up-S-PDIF-in-out-ports.patch \
			    file://0037-Add-misc-I2C-and-SPI-devices-specific-to-the-LEC-Bas.patch \
			    file://0038-Our-SPI-is-connected-differently.patch \
			    file://0039-Enable-CAN-interfaces.patch \
			    file://0040-Adapt-HDMI-interface.patch \
			    file://0041-Some-Freescale-PFUZE100-PMIC-outputs-are-used-differ.patch \
			    file://0042-Add-simple-on-module-I2C-devices.patch \
			    file://0043-More-UARTs-and-connected-differently.patch \
			    file://0044-Improve-parallel-RGB-signal-quality.patch \
			    file://0045-Our-I2C-buses-are-connected-differently.patch \
			    file://0046-Implement-NXP-PCA9535-IRQ-capable-I2C-GPIO-expander.patch \
			    file://0047-A-PCF8575-controls-misc-signals-of-the-LEC-Base-R1-c.patch \
			    file://0048-Change-copyright-references-names-lec-imx6s.patch \
			    file://0049-Drop-EPDC-incl.-pinmux-and-regulator-from-Solo.patch \
			    file://0050-lec-imx6s-battery-lvds-hdmi-changes.patch \
			    file://0051-S3-Wakeup-abnormal-screen-issue-fix.patch \
			    file://0052-Create-spidev-node-for-external-spi1.patch \
			    file://lec-imx6_defconfig \
"

SRC_URI_append_lec-imx6-2 += " \
			    file://0001-Add-user-kernel-split-Kconfig-options-for-full-1-or-.patch \
			    file://0002-Fork-imx6q-dl-sabresd-to-create-lec-imx6q-s.patch \
			    file://0003-Add-instructive-comments.patch \
			    file://0004-Improve-SD-MMC-power-consumption-and-speed.patch \
			    file://0005-pci-imx6.c-add-config-option-to-force-GEN1-speed.patch \
			    file://0006-Fix-heavy-flickering-when-moving-camera-window.patch \
			    file://0007-Work-around-OV564x-cameras-blocking-I2C-bus.patch \
			    file://0008-Fix-and-streamline-TLV320AIC23-drivers.patch \
			    file://0009-Create-DT-option-to-make-HDMI-accept-non-CEA-modes-f.patch \
			    file://0010-Fix-suspend-to-RAM-issues.patch \
			    file://0011-Raise-default-thermal-trip-point-0-to-throttle-only-.patch \
			    file://0012-Set-up-defaults-for-cross-compiling-for-ARM.patch \
			    file://0013-Clarify-kernel-message-indicating-the-CPU-variant.patch \
			    file://0014-Ethernet-is-subtly-different.patch \
			    file://0015-Adapt-camera-interfaces.patch \
			    file://0016-optimize-compile-when-6Q-SL-SX-UL-7D-support-is-disa.patch \
			    file://0017-Add-SST-26VF064B-SPI-flash-support.patch \
			    file://0018-Try-to-fix-panic-when-sound-driver-is-shut-down.patch \
			    file://0019-Add-DT-node-for-Media-Local-Bus-MLB.patch \
			    file://0020-Different-battery-charger-on-the-LEC-Base-R1-carrier.patch \
			    file://0021-Adapt-LVDS-and-parallel-RGB-panel-interfaces.patch \
			    file://0022-SATA-signal-parameters-can-be-tuned.patch \
			    file://0023-Change-copyright-references-names.patch \
			    file://0024-We-have-either-SPI0-or-I2S0-depending-on-mux.patch \
			    file://0025-Add-option-to-activate-alternative-coda-VPU-driver.patch \
			    file://0027-Our-PWM-backlight-has-an-enable-pin-but-no-CABC.patch \
			    file://0028-We-don-t-need-stdout-path-in-chosen-node.patch \
			    file://0029-Most-GPIOs-differ-clear-hog-misc.-pinmux-device.patch \
			    file://0030-A-USB-hub-and-shared-power-enable-over-current-compl.patch \
			    file://0031-Our-SD-MMC-interfaces-are-used-differently.patch \
			    file://0032-PCIe-uses-a-switch-and-other-minor-changes.patch \
			    file://0033-Drop-I2C-devices-our-boards-don-t-implement.patch \
			    file://0034-We-can-t-use-the-MIPI-DSI-display-interface.patch \
			    file://0035-Different-button-functions-on-GPIOs.patch \
			    file://0036-Set-up-S-PDIF-in-out-ports.patch \
			    file://0037-Add-misc-I2C-and-SPI-devices-specific-to-the-LEC-Bas.patch \
			    file://0038-Our-SPI-is-connected-differently.patch \
			    file://0039-Enable-CAN-interfaces.patch \
			    file://0040-Adapt-HDMI-interface.patch \
			    file://0041-Some-Freescale-PFUZE100-PMIC-outputs-are-used-differ.patch \
			    file://0042-Add-simple-on-module-I2C-devices.patch \
			    file://0043-More-UARTs-and-connected-differently.patch \
			    file://0044-Improve-parallel-RGB-signal-quality.patch \
			    file://0045-Our-I2C-buses-are-connected-differently.patch \
			    file://0046-Implement-NXP-PCA9535-IRQ-capable-I2C-GPIO-expander.patch \
			    file://0047-A-PCF8575-controls-misc-signals-of-the-LEC-Base-R1-c.patch \
			    file://0048-Change-copyright-references-names-lec-imx6s.patch \
			    file://0049-Drop-EPDC-incl.-pinmux-and-regulator-from-Solo.patch \
			    file://0050-lec-imx6s-battery-lvds-hdmi-changes.patch \
			    file://0051-S3-Wakeup-abnormal-screen-issue-fix.patch \
			    file://0052-Create-spidev-node-for-external-spi1.patch \
			    file://0053-disable-mmc1-imx6r2.patch \
			    file://0054-ldb-jeida_format.patch \
			    file://0060-SGTL5000_IMX6R2.patch \
			    file://0061-SD2_VSELECT_LOW.patch \	
			    file://0062-Add-G133HAN01-Dual-Channel-LVDS-Support.patch \
			    file://0063-IMX6R2-Added-support-for-OV13850-camera-sensor.patch \
			    file://0064-Critical-and-passive-temperature-is-103-c.patch \
			    file://0065-SPI-Device-Node-Entry-corrected.patch \	
			    file://0066-IMX6R2-Add-device-tree-file-for-imx6qp-module.patch \
			    file://lec-imx6_defconfig \
"

SRC_URI_append_lec-imx8m += " \
			    file://0001-Fork-fsl-imx8mq-evk-to-create-adlink-lec-imx8m.patch \
			    file://0002-0002-Add-uart2-change-rts-cts-from-uart3-to-uart2.patch \
			    file://0003-pcie-pinctrl-modifications.patch \
			    file://0004-otg-typec_ptn5100-removal-dr_mode-modification.patch \
			    file://0005-Add-can-interface-in-ecspi2.patch \
			    file://0006-dvfs-regulator-gpio-and-pinctrl-changes.patch \
			    file://0007-i2c-pinctrl-changes-and-add-i2c4grp-pinctrl.patch \
			    file://0008-CAN-changes-and-CAN-support-to-2G-4G-modules.patch \
			    file://0009-Add-sgtl5000-audio-codec-support.patch \
			    file://0010-Ethernet-dp83867-pinctrl-changes-and-add-tx-rx-internal.patch \
			    file://0011-Add-gpio4-mux-pcal6416a-gpio-expander.patch \
			    file://0012-usdhc-sdslow-changes.patch \
			    file://0013-Add-OV5640-mipi_csi-camera-node-and-pinctrl.patch \
			    file://0014-Add-external-thermal-sensor-support.patch \
			    file://0015-pcie0-uart3-pfuze100_regulator-spi_kconfig-changes.patch \
			    file://0016-Add-usb-otg-host-mode.patch \
			    file://0017-Add-DSI-to-LVDS-panel-support.patch \
			    file://0018-Add-dual-display-support.patch \
			    file://0019-Add-imx8m-1gb-2gb-module-support.patch \
			    file://0020-Add-cpuinfo-for-i.MX8M-variants.patch \
			    file://0021-Add-Support-for-G133HAN01-Dual-Channel-LVDS-Panel.patch \
			    file://lec-imx8m_defconfig \
"
