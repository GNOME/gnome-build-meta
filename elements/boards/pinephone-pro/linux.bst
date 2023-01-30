kind: manual
description: Linux kernel configured for use in virtual machines.

depends:
- freedesktop-sdk.bst:components/kmod.bst
- boards/generic/linux-firmware.bst

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:components/bc.bst
- freedesktop-sdk.bst:components/gzip.bst
- freedesktop-sdk.bst:components/openssl.bst

variables:
  bootdir: /boot
  kernel_arch: '%{arch}'
  src-arch: '%{kernel_arch}'
  image-name: '$(make -s image_name)'
  (?):
  - arch == "x86_64":
      src-arch: x86
  - arch == "aarch64":
      kernel_arch: arm64
      # The default image file is not EFI compatible
      image-name: arch/arm64/boot/Image
  - arch == "i686":
      src-arch: x86
      kernel_arch: i386
  - arch in ("ppc64", "ppc64le"):
      kernel_arch: powerpc
  - arch == "riscv64":
      kernel_arch: riscv
      image-name: arch/riscv/boot/Image

environment:
  ARCH: '%{kernel_arch}'
  # compile.h has hardcoded timestamp, let's seed it
  KBUILD_BUILD_TIMESTAMP: 'Thu Nov 10 15:00:00 UTC 2011'
  KBUILD_BUILD_USER: 'tomjon'

config:
  configure-commands:
  - |
    # Generate the default kernel config for the target architecture
    make pinephone_pro_defconfig

  - |
    . ./config-utils.sh
    rm -f expected-configs

    scripts/config -e EFI
    scripts/config -e BLK_DEV_INITRD
    scripts/config -e RD_GZIP
    scripts/config -e DMI
    scripts/config -e EFI_GENERIC_STUB_INITRD_CMDLINE_LOADER

    scripts/config -e FW_LOADER
    scripts/config -e FW_LOADER_COMPRESS
    scripts/config -e FW_LOADER_PAGED_BUF
    scripts/config -e FW_LOADER_COMPRESS_XZ
    scripts/config -e FW_LOADER_COMPRESS_ZSTD
    scripts/config -e FW_CACHE

    scripts/config -e NET_VENDOR_BROADCOM

    scripts/config -m B43
    scripts/config -e B43_SDIO
    scripts/config -m B43LEGACY
    scripts/config -m BRCMSMAC
    scripts/config -m BRCMFMAC
    scripts/config -e BRCMFMAC_USB
    scripts/config -e BRCM_TRACING
    scripts/config -e BRCMDBG

    scripts/config --set-str EXTRA_FIRMWARE "regulatory.db regulatory.db.p7s brcm/brcmfmac43455-sdio.bin brcm/brcmfmac43455-sdio.pine64,pinephone-pro.txt brcm/brcmfmac43455-sdio.clm_blob brcm/BCM4345C0.hcd rockchip/dptx.bin"
    scripts/config --set-str EXTRA_FIRMWARE_DIR "/workspace/megous.com/orangepi-pc/firmware"

    scripts/config -e IKCONFIG
    scripts/config -e IKCONFIG_PROC

    scripts/config -e PINCTRL_SUN50I_H6_R 
    scripts/config -e ACPI_HED 
    scripts/config -e PATA_PLATFORM 
    scripts/config -e ACPI_APEI_GHES 
    scripts/config -e PAGE_REPORTING 
    scripts/config -e MDIO_BITBANG 
    scripts/config -e PCI_AARDVARK 
    scripts/config -e HIX5HD2_GMAC 
    scripts/config -e FSL_MC_BUS 
    scripts/config -e IPQ_GCC_8074 
    scripts/config -e HOTPLUG_PCI 
    scripts/config -m IIO_CROS_EC_BARO 
    scripts/config -m RTC_DRV_RV8803 
    scripts/config -e POWER_RESET_SYSCON 
    scripts/config -m RTC_DRV_PM8XXX 
    scripts/config -m IIO_CROS_EC_LIGHT_PROX 
    scripts/config -e GPIO_XGENE 
    scripts/config -e SERIAL_8250_OMAP_TTYO_FIXUP 
    scripts/config -e HID_CHERRY 
    scripts/config -e ARM64_E0PD 
    scripts/config -e MXC_CLK 
    scripts/config -e CROS_EC_SENSORHUB 
    scripts/config -m RPMSG_CHAR 
    scripts/config -e FSL_DPAA 
    scripts/config -e SATA_SIL24 
    scripts/config -m DMA_SUN6I 
    scripts/config -e CLK_OWL_S500 
    scripts/config -e PINCTRL_MT6765 
    scripts/config -e MMC_SDHI 
    scripts/config -e ACPI_IORT 
    scripts/config -e IRQ_POLL 
    scripts/config -e STUB_CLK_HI3660 
    scripts/config -e MV_XOR_V2 
    scripts/config  --set-str PSTORE_COMPRESS_DEFAULT "deflate"
    scripts/config -e SERIAL_OWL_CONSOLE 
    scripts/config -e OWL_TIMER 
    scripts/config -e HNS_MDIO 
    scripts/config -e SERIO_LIBPS2 
    scripts/config -m XEN_PCIDEV_STUB 
    scripts/config -e SPRD_TIMER 
    scripts/config -e SYSCON_REBOOT_MODE 
    scripts/config -e PCI_XGENE_MSI 
    scripts/config -e PINCTRL_IMX8QM 
    scripts/config -m RTC_DRV_HYM8563 
    scripts/config -e MQ_IOSCHED_DEADLINE 
    scripts/config -m SENSORS_INA2XX 
    scripts/config -e ARM64_WORKAROUND_REPEAT_TLBI 
    scripts/config -e HAVE_ARCH_KASAN_HW_TAGS 
    scripts/config -e ARCH_HAS_ACPI_TABLE_UPGRADE 
    scripts/config -e I2C_DESIGNWARE_CORE 
    scripts/config -m RTC_DRV_M41T80 
    scripts/config -e SYSC_R8A77980 
    scripts/config -e TI_SCI_INTR_IRQCHIP 
    scripts/config -e PCIE_ALTERA 
    scripts/config -e TRANS_TABLE 
    scripts/config -e PINCTRL_MT6779 
    scripts/config -m GPIO_BD9571MWV 
    scripts/config -m PWM_RENESAS_TPU 
    scripts/config -e SYSC_R8A77990 
    scripts/config -m CRYPTO_DEV_HISI_ZIP 
    scripts/config -e MFD_MAX77620 
    scripts/config -e RTC_DRV_PL031 
    scripts/config -e TI_SCI_INTA_MSI_DOMAIN 
    scripts/config -e MFD_AXP20X_I2C 
    scripts/config -e FEC 
    scripts/config -e MMC_SDHCI_AM654 
    scripts/config -e CLK_IMX8MM 
    scripts/config -m CRYPTO_ENGINE 
    scripts/config -e ARCH_VEXPRESS 
    scripts/config -e CLK_RENESAS_CPG_MSSR 
    scripts/config -e ARCH_RCAR_GEN3 
    scripts/config -e PINCTRL_PFC_R8A77970 
    scripts/config -e I2C_PXA 
    scripts/config -e REGULATOR_S2MPS11 
    scripts/config -e SERIAL_FSL_LINFLEXUART_CONSOLE 
    scripts/config -e HAVE_SCHED_AVG_IRQ 
    scripts/config -e DW_APB_TIMER_OF 
    scripts/config -e ARCH_VISCONTI 
    scripts/config -e PHY_MVEBU_A3700_UTMI 
    scripts/config -e SERIAL_8250_OMAP 
    scripts/config -e DNS_RESOLVER 
    scripts/config -e TI_K3_RINGACC 
    scripts/config -e MTD_RAW_NAND 
    scripts/config -e SWIOTLB_XEN 
    scripts/config -e SUN50I_H6_CCU 
    scripts/config -e PSTORE 
    scripts/config -e INTERCONNECT 
    scripts/config -e PINCTRL_PFC_R8A774B1 
    scripts/config -m SLIMBUS 
    scripts/config -e HID_CHICONY 
    scripts/config -e SERIO_AMBAKMI 
    scripts/config -e PCIE_IPROC_PLATFORM 
    scripts/config -e IP_PNP 
    scripts/config -e MTD_PHYSMAP_OF 
    scripts/config -e PINCTRL_MVEBU 
    scripts/config -e ACPI_CONTAINER 
    scripts/config -m WCN36XX 
    scripts/config -m IIO_ST_LSM6DSX 
    scripts/config -e CLK_R8A779A0 
    scripts/config -m IIO_CROS_EC_SENSORS 
    scripts/config -m IIO_ST_MAGN_3AXIS 
    scripts/config -e PINCTRL_MT6397 
    scripts/config -e E1000 
    scripts/config -e VIRTIO_CONSOLE 
    scripts/config -e CLK_RCAR_GEN4_CPG 
    scripts/config -e CROS_EC_PROTO 
    scripts/config -e ARM_TIMER_SP804 
    scripts/config -e SERIAL_8250_UNIPHIER 
    scripts/config -e SERIAL_8250_MT6577 
    scripts/config -e RAID6_PQ_BENCHMARK 
    scripts/config -m TYPEC_TPS6598X 
    scripts/config -e SPRD_SC9863A_CLK 
    scripts/config -e ARM64_ERRATUM_2051678 
    scripts/config -e BGMAC_PLATFORM 
    scripts/config -e INDIRECT_PIO 
    scripts/config -e DRM_RCAR_USE_CMM 
    scripts/config -m PHY_MTK_HDMI 
    scripts/config -e EXCLUSIVE_SYSTEM_RAM 
    scripts/config -e ACPI_NUMA 
    scripts/config -e PINCTRL_TMPV7700 
    scripts/config -m IR_SUNXI 
    scripts/config -e MICREL_PHY 
    scripts/config -e VFIO_PCI_CORE 
    scripts/config -m MICROCHIP_PHY 
    scripts/config -e MTD_NAND_FSL_IFC 
    scripts/config -e PINCTRL_SUN50I_H616 
    scripts/config -e NFS_V4_2 
    scripts/config -e PINCTRL_UNIPHIER_LD11 
    scripts/config -e E1000E 
    scripts/config -e MTD_GEN_PROBE 
    scripts/config -e PINCTRL_PFC_R8A77995 
    scripts/config -e SM_GPUCC_8250 
    scripts/config -e RENESAS_DMA 
    scripts/config -e PHY_HISTB_COMBPHY 
    scripts/config -e ARCH_R8A779A0 
    scripts/config -e MMC_MTK 
    scripts/config -e ATA_ACPI 
    scripts/config -e SPI_FSL_LPSPI 
    scripts/config -m SDM_CAMCC_845 
    scripts/config -e PINCTRL_PFC_R8A77950 
    scripts/config -e SYSC_R8A774E1 
    scripts/config -e ARCH_SYNQUACER 
    scripts/config -e FSL_IFC 
    scripts/config -e XEN_SCRUB_PAGES_DEFAULT 
    scripts/config -m PWM_RCAR 
    scripts/config -e LEGACY_PTYS 
    scripts/config -e SCSI_LOWLEVEL 
    scripts/config -e PINCTRL_SM8350 
    scripts/config -e EXT2_FS 
    scripts/config -e SUN8I_DE2_CCU 
    scripts/config -e REGULATOR_ROHM 
    scripts/config -m BNX2X 
    scripts/config -e I2C_IMX_LPI2C 
    scripts/config -e MVPP2 
    scripts/config -e TEE_BNXT_FW 
    scripts/config -e SUN50I_A100_CCU 
    scripts/config -e UNINLINE_SPIN_UNLOCK 
    scripts/config -m MTK_DEVAPC 
    scripts/config -e CRASH_DUMP 
    scripts/config -m IIO_CROS_EC_SENSORS_CORE 
    scripts/config -e ACPI_I2C_OPREGION 
    scripts/config -e SYSC_R8A77965 
    scripts/config -e PROC_PID_CPUSET 
    scripts/config -e SYSC_RCAR_GEN4 
    scripts/config -e CLK_IMX8MQ 
    scripts/config -e HID_A4TECH 
    scripts/config -e ACPI_SPCR_TABLE 
    scripts/config -m TAP 
    scripts/config -e ARCH_R8A77995 
    scripts/config -e TI_SCI_PM_DOMAINS 
    scripts/config -m DRM_SUN8I_MIXER 
    scripts/config -e VITESSE_PHY 
    scripts/config -e GPIO_VISCONTI 
    scripts/config -e ARCH_R8A77950 
    scripts/config -e VEXPRESS_CONFIG 
    scripts/config -e CLK_R8A774E1 
    scripts/config -e CLK_R8A77970 
    scripts/config -e ARCH_KEEMBAY 
    scripts/config -e HOTPLUG_PCI_ACPI 
    scripts/config -e ARM64_ERRATUM_1463225 
    scripts/config -m MAX9611 
    scripts/config -e NF_CONNTRACK_PROCFS 
    scripts/config -e ARM64_ERRATUM_1542419 
    scripts/config -e VIRTIO 
    scripts/config -e MACB 
    scripts/config -e XEN 
    scripts/config -e HVC_DRIVER 
    scripts/config -e MTK_SCPSYS_PM_DOMAINS 
    scripts/config -e PCIE_RCAR_EP 
    scripts/config -m RTC_DRV_FSL_FTM_ALARM 
    scripts/config  --set-str NFS_V4_1_IMPLEMENTATION_ID_DOMAIN "kernel.org"
    scripts/config -e OWL_PM_DOMAINS 
    scripts/config -e DRM_MXS 
    scripts/config -e ARCH_ALPINE 
    scripts/config -e ZYNQMP_FIRMWARE 
    scripts/config -e VIRTIO_PCI 
    scripts/config -e NUMA_BALANCING_DEFAULT_ENABLED 
    scripts/config -e SERIAL_MVEBU_UART 
    scripts/config -m DRM_NWL_MIPI_DSI 
    scripts/config --set-val NODES_SHIFT 4
    scripts/config -e REGMAP_SPMI 
    scripts/config -e LOCKD 
    scripts/config -m INTERCONNECT_IMX 
    scripts/config -e GCC_PLUGINS 
    scripts/config -e SPMI 
    scripts/config -e PROFILING 
    scripts/config -e PNPACPI 
    scripts/config -e MMC_SUNXI 
    scripts/config -e MDIO_BUS_MUX 
    scripts/config -e ACPI 
    scripts/config -m QRTR_TUN 
    scripts/config -m HW_RANDOM_MTK 
    scripts/config -m SPI_DW_MMIO 
    scripts/config -m MACVTAP 
    scripts/config -e CAVIUM_ERRATUM_30115 
    scripts/config -e CLK_UNIPHIER 
    scripts/config -m DRM_SUN4I_BACKEND 
    scripts/config -e FSL_DPAA2_PTP_CLOCK 
    scripts/config -e SOC_IMX8M 
    scripts/config -e NVMEM_SUNXI_SID 
    scripts/config -m DM_ZERO 
    scripts/config -e PINCTRL_IMX8ULP 
    scripts/config -e PINCTRL_SM8150 
    scripts/config -e CROS_EC 
    scripts/config -e PINCTRL_MT8173 
    scripts/config -m MLX4_CORE 
    scripts/config -e AT803X_PHY 
    scripts/config -e DRM_LEGACY 
    scripts/config -m PCI_ENDPOINT_TEST 
    scripts/config -e VHOST_MENU 
    scripts/config -e OF_NUMA 
    scripts/config -e MFD_ROHM_BD718XX 
    scripts/config -e HISI_PMU 
    scripts/config -e RST_RCAR 
    scripts/config --set-val PSTORE_DEFAULT_KMSG_BYTES 10240
    scripts/config -e SPI_FSL_DSPI 
    scripts/config -e ACPI_REDUCED_HARDWARE_ONLY 
    scripts/config -m RTC_DRV_DS1307 
    scripts/config -e FPGA 
    scripts/config -e CGROUP_HUGETLB 
    scripts/config -m DWMAC_IPQ806X 
    scripts/config -e NFS_FS 
    scripts/config -m HW_RANDOM_CN10K 
    scripts/config -e HISILICON_LPC 
    scripts/config -e XEN_SYS_HYPERVISOR 
    scripts/config -e ASYNC_TX_ENABLE_CHANNEL_SWITCH 
    scripts/config -m HW_RANDOM_OPTEE 
    scripts/config -m IIO_ST_SENSORS_I2C 
    scripts/config -e NUMA 
    scripts/config -e SUN50I_A100_R_CCU 
    scripts/config -e AHCI_XGENE 
    scripts/config -e PINCTRL_SM8250 
    scripts/config -e PHY_RCAR_GEN3_PCIE 
    scripts/config -m WLCORE 
    scripts/config -e SERIAL_8250_DEPRECATED_OPTIONS 
    scripts/config -e QORIQ_CPUFREQ 
    scripts/config -e RTC_DRV_MAX77686 
    scripts/config -e RESET_SIMPLE 
    scripts/config -e CRYPTO_DEV_ALLWINNER 
    scripts/config -e MEMORY_BALLOON 
    scripts/config -e MFD_MT6397 
    scripts/config -e CAVIUM_ERRATUM_22375 
    scripts/config -e PREEMPT_RCU 
    scripts/config -e DW_APB_ICTL 
    scripts/config -e SUNXI_RSB 
    scripts/config -m ACPI_CPPC_CPUFREQ 
    scripts/config -m FSL_IMX8_DDR_PMU 
    scripts/config -e CRC_ITU_T 
    scripts/config -e CLK_R8A77960 
    scripts/config -m I2C_HID_OF 
    scripts/config -e EFI_CUSTOM_SSDT_OVERLAYS 
    scripts/config -e MVEBU_ICU 
    scripts/config -e VFIO 
    scripts/config -e DECOMPRESS_BZIP2 
    scripts/config -e PINCTRL_SDM845 
    scripts/config -e IRQ_FASTEOI_HIERARCHY_HANDLERS 
    scripts/config -e HIBERNATE_CALLBACKS 
    scripts/config -m MARVELL_10G_PHY 
    scripts/config -e STUB_CLK_HI6220 
    scripts/config -e ACPI_APEI_SEA 
    scripts/config -e TI_SCI_PROTOCOL 
    scripts/config -e PINCTRL_ARMADA_37XX 
    scripts/config -e ARCH_MXC 
    scripts/config -e SOC_RENESAS 
    scripts/config -e SPI_SUN6I 
    scripts/config -e MMC_SDHCI_IO_ACCESSORS 
    scripts/config -e CLK_SUNXI_PRCM_SUN6I 
    scripts/config -m DRM_DP_AUX_BUS 
    scripts/config -e TI_K3_UDMA 
    scripts/config -e VIRTIO_MMIO 
    scripts/config -m RZG2L_ADC 
    scripts/config -m ALTERA_FREEZE_BRIDGE 
    scripts/config -e FAILOVER 
    scripts/config -m RESET_BERLIN 
    scripts/config -e ARM_MHU 
    scripts/config -e RTC_DRV_S5M 
    scripts/config -e GPIO_ACPI 
    scripts/config -e PINCTRL_IPQ6018 
    scripts/config -m EEPROM_AT25 
    scripts/config -e UNIPHIER_EFUSE 
    scripts/config -e SKY2 
    scripts/config -e SPI_PL022 
    scripts/config -e ARCH_R8A774C0 
    scripts/config -e DRM_RCAR_USE_LVDS 
    scripts/config -e CLK_QORIQ 
    scripts/config -e REMOTEPROC 
    scripts/config -m MFD_WM8994 
    scripts/config -e ARM64_AMU_EXTN 
    scripts/config -e REGULATOR_BD718XX 
    scripts/config -e RTC_DRV_XGENE 
    scripts/config -m DRM_PANEL_EDP 
    scripts/config -e MULTIPLEXER 
    scripts/config -e DECOMPRESS_LZMA 
    scripts/config -e OF_OVERLAY 
    scripts/config -e MMC_UNIPHIER 
    scripts/config -e I2C_SLAVE 
    scripts/config -e CLK_IMX8QXP 
    scripts/config -e SCSI_SAS_ATA 
    scripts/config -e CLK_RENESAS 
    scripts/config -e MTD_SST25L 
    scripts/config -m DRM_HISI_KIRIN 
    scripts/config -e SUN4I_TIMER 
    scripts/config -e SCSI_UFS_HISI 
    scripts/config -m CRYPTO_DEV_HISI_SEC2 
    scripts/config -e ARCH_USES_HIGH_VMA_FLAGS 
    scripts/config -m DRM_SUN8I_DW_HDMI 
    scripts/config -e VIRTIO_MENU 
    scripts/config -e SMC91X 
    scripts/config -m RTC_DRV_SNVS 
    scripts/config -m GPIO_ALTERA 
    scripts/config -m ARM_ALLWINNER_SUN50I_CPUFREQ_NVMEM 
    scripts/config -e PPS 
    scripts/config -e ARCH_R9A07G044 
    scripts/config -e HNS3_HCLGE 
    scripts/config -e DRM_RCAR_WRITEBACK 
    scripts/config -m DRM_HISI_HIBMC 
    scripts/config -e DP83867_PHY 
    scripts/config -e SPI_ARMADA_3700 
    scripts/config -e MMC_TMIO_CORE 
    scripts/config -e TI_K3_SOCINFO 
    scripts/config -e QCS_GCC_404 
    scripts/config -e CRC7 
    scripts/config -e PATA_OF_PLATFORM 
    scripts/config -e MTK_IOMMU 
    scripts/config -e IMX_GPCV2_PM_DOMAINS 
    scripts/config -e MUX_MMIO 
    scripts/config -e PINCTRL_MT7622 
    scripts/config -e PINCTRL_MT6797 
    scripts/config -e PCIE_MOBIVEIL_HOST 
    scripts/config --set-val SCSI_MPT3SAS_MAX_SGE 128
    scripts/config -e MICROSEMI_PHY 
    scripts/config -e PHY_MVEBU_CP110_COMPHY 
    scripts/config -e REGULATOR_BD9571MWV 
    scripts/config -m DRM_SUN4I_HDMI 
    scripts/config -m I2C_HID_ACPI 
    scripts/config -e PINCTRL_NS2_MUX 
    scripts/config -e LS_EXTIRQ 
    scripts/config -e PCS_LYNX 
    scripts/config -e SATA_RCAR 
    scripts/config -e GPIO_GENERIC_PLATFORM 
    scripts/config -m RTC_DRV_RV3028 
    scripts/config -m FPGA_BRIDGE 
    scripts/config -e ZYNQMP_IPI_MBOX 
    scripts/config -e ACPI_PROCESSOR_IDLE 
    scripts/config -e NFS_V2 
    scripts/config -e PCI_ENDPOINT 
    scripts/config -e MX3_IPU 
    scripts/config -e SYS_HYPERVISOR 
    scripts/config -e ARCH_R8A77951 
    scripts/config -m REGULATOR_VCTRL 
    scripts/config -e SM_GCC_8150 
    scripts/config -e SCSI_HISI_SAS 
    scripts/config --set-val DVB_MAX_ADAPTERS 16
    scripts/config -e SCHED_AUTOGROUP 
    scripts/config -e MFD_SIMPLE_MFD_I2C 
    scripts/config -e CLK_OWL_S700 
    scripts/config -e ARCH_LG1K 
    scripts/config -e MMC_SDHCI_CADENCE 
    scripts/config -e MLX4_DEBUG 
    scripts/config -e MMC_SPI 
    scripts/config -e PTP_1588_CLOCK_KVM 
    scripts/config --set-val SCSI_MPT2SAS_MAX_SGE 128
    scripts/config -m CLK_GFM_LPASS_SM8250 
    scripts/config -e SERIAL_SH_SCI_DMA 
    scripts/config --set-val SERIAL_SH_SCI_NR_UARTS 18
    scripts/config -e ARCH_HIBERNATION_HEADER 
    scripts/config -e PCI_IOV 
    scripts/config -e CLK_R9A07G044 
    scripts/config -m DRM_I2C_CH7006 
    scripts/config -e RAVB 
    scripts/config -e PINCTRL_IMX8MM 
    scripts/config -e GPIO_GENERIC 
    scripts/config -e XEN_BALLOON 
    scripts/config -e ARCH_R8A77960 
    scripts/config -e ACPI_CPPC_CPUFREQ_FIE 
    scripts/config -m CRYPTO_DEV_HISI_TRNG 
    scripts/config -e AHCI_MVEBU 
    scripts/config -e CLK_SUNXI_CLOCKS 
    scripts/config -e ARCH_R8A774B1 
    scripts/config -m CRYPTO_DEV_HISI_QM 
    scripts/config -e STACKPROTECTOR 
    scripts/config -m GNSS_SERIAL 
    scripts/config -m RAID_ATTRS 
    scripts/config -e PINCTRL_IMX8QXP 
    scripts/config -m DRM_SUN6I_DSI 
    scripts/config -e IMX_MBOX 
    scripts/config -e PCI_XGENE 
    scripts/config -e KEXEC 
    scripts/config -e SUN6I_MSGBOX 
    scripts/config -e ARCH_BERLIN 
    scripts/config -e SCSI_HISI_SAS_PCI 
    scripts/config -e MMC_DW_HI3798CV200 
    scripts/config -e SM_DISPCC_8250 
    scripts/config -m DRM_RCAR_CMM 
    scripts/config -e MFD_HI6421_PMIC 
    scripts/config -e CRC8 
    scripts/config -e IRQ_UNIPHIER_AIDET 
    scripts/config -e EINT_MTK 
    scripts/config -e CPU_FREQ_DEFAULT_GOV_SCHEDUTIL 
    scripts/config -e IP_PNP_DHCP 
    scripts/config -m CROS_EC_CHARDEV 
    scripts/config -m DRM_PANEL_RAYDIUM_RM67191 
    scripts/config -e MMC_SDHCI_ESDHC_IMX 
    scripts/config -e SPI_NXP_FLEXSPI 
    scripts/config -e REGULATOR_MT6397 
    scripts/config  --set-str PM_STD_PARTITION ""
    scripts/config -e IMX_SCU_PD 
    scripts/config -e CLK_IMX8MP 
    scripts/config -e ARCH_ACTIONS 
    scripts/config -e XEN_GNTDEV 
    scripts/config -e CRYPTO_DEV_FSL_CAAM_CRYPTO_API_QI 
    scripts/config -m RTC_DRV_RX8581 
    scripts/config -e SYSC_R8A779F0 
    scripts/config -e HUGETLBFS 
    scripts/config -e CLK_R8A779F0 
    scripts/config -e FB_MX3 
    scripts/config -e PINCTRL_SINGLE 
    scripts/config -e SUNXI_CCU 
    scripts/config -e PINCTRL_SUN50I_H5 
    scripts/config -e VFIO_VIRQFD 
    scripts/config -e ARCH_MVEBU 
    scripts/config -e CGROUP_CPUACCT 
    scripts/config -e MTK_SMI 
    scripts/config -e SM_GCC_8350 
    scripts/config -m ARM_IMX8M_DDRC_DEVFREQ 
    scripts/config -e SERIAL_SH_SCI_CONSOLE 
    scripts/config -m DWMAC_SUNXI 
    scripts/config -e CROS_EC_DEBUGFS 
    scripts/config -e MFD_AXP20X 
    scripts/config -m SENSORS_ISL29018 
    scripts/config -e SPI_S3C64XX 
    scripts/config -e SUNXI_MBUS 
    scripts/config -e REGULATOR_AXP20X 
    scripts/config -m DM_MIRROR 
    scripts/config -e GPIO_RCAR 
    scripts/config -m NVMEM_RMEM 
    scripts/config -e EDAC 
    scripts/config -m PNFS_BLOCK 
    scripts/config -e PINCTRL_MTK_MOORE 
    scripts/config -e MMC_SDHCI_OF_ESDHC 
    scripts/config -e BRIDGE_VLAN_FILTERING 
    scripts/config -e ARMADA_AP_CP_HELPER 
    scripts/config -e SH_TIMER_TMU 
    scripts/config -m DRM_RCAR_DU 
    scripts/config -m MPL3115 
    scripts/config -m QRTR 
    scripts/config -m DRM_LONTIUM_LT8912B 
    scripts/config -m IIO_ST_SENSORS_CORE 
    scripts/config -m CROS_EC_TYPEC 
    scripts/config -e ACPI_PCC 
    scripts/config -e TIMER_IMX_SYS_CTR 
    scripts/config -m DRM_TTM_HELPER 
    scripts/config -m PWM_SL28CPLD 
    scripts/config -e ARCH_R8A77961 
    scripts/config -e ARM_ARMADA_37XX_CPUFREQ 
    scripts/config -m SPI_BITBANG 
    scripts/config -e MVEBU_GICP 
    scripts/config -e PCC 
    scripts/config -e ACPI_AC 
    scripts/config -e VFIO_IOMMU_TYPE1 
    scripts/config -e PNP_DEBUG_MESSAGES 
    scripts/config -e MDIO_BUS_MUX_MULTIPLEXER 
    scripts/config -e PINCTRL_SUN50I_A100 
    scripts/config -e MQ_IOSCHED_KYBER 
    scripts/config -e PINCTRL_SUN50I_A64 
    scripts/config -e 9P_FS 
    scripts/config -e TIMER_ACPI 
    scripts/config -e CLK_R8A77990 
    scripts/config -m HW_RANDOM_HISI 
    scripts/config -m PWM_VISCONTI 
    scripts/config -e PRINTK_TIME 
    scripts/config -e MTD_NAND_DENALI 
    scripts/config -m SPI_IMX 
    scripts/config -e ASYNC_TX_DISABLE_PQ_VAL_DMA 
    scripts/config -e HNS 
    scripts/config -e EXT3_FS 
    scripts/config -e ARM64_PTR_AUTH 
    scripts/config -e I2C_RCAR 
    scripts/config -e PCI_BRIDGE_EMUL 
    scripts/config -m BLK_DEV_MD 
    scripts/config -e SDM_DISPCC_845 
    scripts/config -m SPI_SH_MSIOF 
    scripts/config -e HID_REDRAGON 
    scripts/config -m EDAC_LAYERSCAPE 
    scripts/config -m HW_RANDOM_CAVIUM 
    scripts/config -e ARCH_SPRD 
    scripts/config -e PINCTRL_VISCONTI 
    scripts/config -e CLK_R8A77965 
    scripts/config -e PINCTRL_IPQ8074 
    scripts/config -m CRYPTO_DEV_HISI_HPRE 
    scripts/config -e ASYNC_TX_DISABLE_XOR_VAL_DMA 
    scripts/config -m EEPROM_AT24 
    scripts/config -e SYS_SUPPORTS_SH_TMU 
    scripts/config -e PHY_MTK_TPHY 
    scripts/config -e REGULATOR_PFUZE100 
    scripts/config -e IPQ_GCC_6018 
    scripts/config -m DRM_PANEL_SITRONIX_ST7703 
    scripts/config -e CLK_RCAR_CPG_LIB 
    scripts/config -e PCIE_HISI_STB 
    scripts/config -e RTC_DRV_S3C 
    scripts/config -m DRM_LONTIUM_LT9611 
    scripts/config -e I2C_SMBUS 
    scripts/config -e TI_K3_PSIL 
    scripts/config -e FSL_FMAN 
    scripts/config -e CLK_R8A77995 
    scripts/config -e QUOTACTL 
    scripts/config -e XENFS 
    scripts/config -e XEN_AUTO_XLATE 
    scripts/config -e BGMAC 
    scripts/config -e NFS_V4_SECURITY_LABEL 
    scripts/config -e MV_XOR 
    scripts/config -m MSCC_OCELOT_SWITCH_LIB 
    scripts/config -m CRYPTO_DEV_FSL_CAAM 
    scripts/config -e SERIAL_8250_PCI 
    scripts/config -e FSL_XGMAC_MDIO 
    scripts/config -m DRM_TI_SN65DSI86 
    scripts/config -e SERIAL_IMX_EARLYCON 
    scripts/config -e PINCTRL_IMX8DXL 
    scripts/config -e TI_DAVINCI_MDIO 
    scripts/config -e PINCTRL_MT2712 
    scripts/config -e NFS_V3 
    scripts/config -m SUNXI_WATCHDOG 
    scripts/config -e GRACE_PERIOD 
    scripts/config -e XEN_PRIVCMD 
    scripts/config -e IMX2_WDT 
    scripts/config -e MTD_CFI_STAA 
    scripts/config -e ACPI_CPPC_LIB 
    scripts/config -e PCI_HISI 
    scripts/config -m MLX4_EN 
    scripts/config -e PINCTRL_MT8365 
    scripts/config -m DRM_RCAR_LVDS 
    scripts/config -e I2C_SH_MOBILE 
    scripts/config -m DRM_LONTIUM_LT9611UXC 
    scripts/config -e IMX_GPCV2 
    scripts/config -m HW_RANDOM 
    scripts/config -e UEFI_CPER_ARM 
    scripts/config -e ARCH_K3 
    scripts/config -m GPIO_WCD934X 
    scripts/config -m IPMI_DEVICE_INTERFACE 
    scripts/config -e NFS_DISABLE_UDP_SUPPORT 
    scripts/config -e VIRTIO_PCI_LEGACY 
    scripts/config -e GPIO_ZYNQMP_MODEPIN 
    scripts/config -e DMA_ACPI 
    scripts/config -e LOCKD_V4 
    scripts/config -e PINCTRL_ZYNQMP 
    scripts/config -e ARM64_ERRATUM_832075 
    scripts/config -m RC_CORE 
    scripts/config -m OF_FPGA_REGION 
    scripts/config -e PINCTRL_QDF2XXX 
    scripts/config -e PSTORE_DEFLATE_COMPRESS 
    scripts/config -e SERIAL_FSL_LINFLEXUART 
    scripts/config -e SYSC_R8A77995 
    scripts/config -m DWMAC_VISCONTI 
    scripts/config -m SENSORS_SL28CPLD 
    scripts/config -e I2C_OWL 
    scripts/config -e ARCH_S32 
    scripts/config -e ARCH_HISI 
    scripts/config -e SDR_PLATFORM_DRIVERS 
    scripts/config -e SECURITYFS 
    scripts/config -e ACPI_MDIO 
    scripts/config -e ACPI_APEI 
    scripts/config -e DPAA_ERRATUM_A050385 
    scripts/config -e GPIO_MPC8XXX 
    scripts/config -e SPI_DW_DMA 
    scripts/config -e HZ_250 
    scripts/config -m MWIFIEX 
    scripts/config -e DECOMPRESS_XZ 
    scripts/config -e SOC_TI 
    scripts/config -m CRYPTO_DEV_FSL_DPAA2_CAAM 
    scripts/config -e ACPI_TABLE_UPGRADE 
    scripts/config -e PINCTRL_MTK 
    scripts/config -e MTK_SCPSYS 
    scripts/config -e PINCTRL_SUN50I_H6 
    scripts/config -e NEED_PER_CPU_PAGE_FIRST_CHUNK 
    scripts/config -e SYSC_R8A774A1 
    scripts/config -m PWM_CROS_EC 
    scripts/config -e ACPI_GENERIC_GSI 
    scripts/config -e PINCTRL_UNIPHIER_NX1 
    scripts/config -m DRM_VC4 
    scripts/config -e EFI_CAPSULE_LOADER 
    scripts/config -e XEN_COMPAT_XENFS 
    scripts/config -e DPAA2_CONSOLE 
    scripts/config -e KEXEC_CORE 
    scripts/config -e I2C_S3C2410 
    scripts/config -m RTC_DRV_PCF85063 
    scripts/config -e MTD_CFI 
    scripts/config -e RTC_DRV_DS3232 
    scripts/config -e SQUASHFS_FILE_CACHE 
    scripts/config -e EDAC_GHES 
    scripts/config -m SPI_RPCIF 
    scripts/config -e ARM64_ERRATUM_834220 
    scripts/config -e UEFI_CPER 
    scripts/config -e ARCH_ENABLE_HUGEPAGE_MIGRATION 
    scripts/config -m DRM_ETNAVIV 
    scripts/config -e BLK_DEV_BSGLIB 
    scripts/config -e ACPI_APEI_EINJ 
    scripts/config -e RANDOMIZE_BASE 
    scripts/config -e ARM_SBSA_WATCHDOG 
    scripts/config -e ACPI_BUTTON 
    scripts/config -e MDIO_XGENE 
    scripts/config -e PINCTRL_MTK_V2 
    scripts/config -e MTD_CFI_UTIL 
    scripts/config -e RPMSG 
    scripts/config -e SUN50I_A64_CCU 
    scripts/config -m SENSORS_INA3221 
    scripts/config -e PCIE_KIRIN 
    scripts/config -e MFD_AXP20X_RSB 
    scripts/config -e ARM64_EPAN 
    scripts/config -e MMC_SDHCI_F_SDH30 
    scripts/config -e SECURITY 
    scripts/config -e ARCH_R8A77970 
    scripts/config -e USE_PERCPU_NUMA_NODE_ID 
    scripts/config -e PINCTRL_PFC_R8A774E1 
    scripts/config -m AX88796B_PHY 
    scripts/config -e HID_KENSINGTON 
    scripts/config -e VIRTIO_PCI_LIB_LEGACY 
    scripts/config -e HID_ITE 
    scripts/config -e CLK_SUNXI 
    scripts/config -e PINCTRL_PFC_R8A77965 
    scripts/config -e PHY_UNIPHIER_AHCI 
    scripts/config -m IMX_SC_WDT 
    scripts/config -e PINCTRL_MT8167 
    scripts/config -e MFD_SUN6I_PRCM 
    scripts/config -e RTC_DRV_EFI 
    scripts/config -e NFS_V4 
    scripts/config -e XEN_DEV_EVTCHN 
    scripts/config -e SERIAL_IMX 
    scripts/config -e GPIO_PCA953X 
    scripts/config -m DRM_I2C_ADV7511 
    scripts/config -e AHCI_QORIQ 
    scripts/config -m CRYPTO_DEV_FSL_CAAM_CRYPTO_API_DESC 
    scripts/config -m CEC_CORE 
    scripts/config -e CRYPTO_DEV_FSL_CAAM_PKC_API 
    scripts/config -e MTK_TIMER 
    scripts/config -e SUN8I_H3_CCU 
    scripts/config -e GPIO_MB86S7X 
    scripts/config -e MFD_CROS_EC_DEV 
    scripts/config -e CLK_SUNXI_PRCM_SUN8I 
    scripts/config -e KSM 
    scripts/config -e SPI_ORION 
    scripts/config -m HW_RANDOM_IPROC_RNG200 
    scripts/config -e SOCIONEXT_SYNQUACER_PREITS 
    scripts/config -m MFD_WCD934X 
    scripts/config -e AQUANTIA_PHY 
    scripts/config -m SCSI_MPT3SAS 
    scripts/config -e QUOTA 
    scripts/config -e MVEBU_SEI 
    scripts/config -e GENERIC_PINCTRL_GROUPS 
    scripts/config -e S3C2410_WATCHDOG 
    scripts/config -e STRICT_DEVMEM 
    scripts/config -e CLK_IMX8ULP 
    scripts/config -m DWMAC_SOCFPGA 
    scripts/config -e SPI_QUP 
    scripts/config -e SERIO 
    scripts/config -e PINCTRL_S900 
    scripts/config -e FSL_RCPM 
    scripts/config -e GPIO_PL061 
    scripts/config -e ARCH_R8A774E1 
    scripts/config -e BLK_MQ_VIRTIO 
    scripts/config -e SUN50I_ERRATUM_UNKNOWN1 
    scripts/config -m WLCORE_SDIO 
    scripts/config -e PCI_ENDPOINT_CONFIGFS 
    scripts/config -e CRYPTO_DEV_FSL_CAAM_AHASH_API 
    scripts/config -e SDM_GCC_845 
    scripts/config -e STACKPROTECTOR_PER_TASK 
    scripts/config -e PHY_XGENE 
    scripts/config -e GPIO_PCA953X_IRQ 
    scripts/config -e CAVIUM_TX2_ERRATUM_219 
    scripts/config -e SCHED_SMT 
    scripts/config -e FSL_GUTS 
    scripts/config -m IIO_ST_MAGN_I2C_3AXIS 
    scripts/config -e REGULATOR_MAX8973 
    scripts/config -e CROS_EC_VBC 
    scripts/config -e ARM_SP805_WATCHDOG 
    scripts/config -m PWM_SUN4I 
    scripts/config -e ACPI_PPTT 
    scripts/config -e AUTOFS4_FS 
    scripts/config -e UNIPHIER_SYSTEM_BUS 
    scripts/config -m DRM_RCAR_DW_HDMI 
    scripts/config -m RTC_DRV_IMX_SC 
    scripts/config -e CLK_R8A774A1 
    scripts/config -e RESET_SUNXI 
    scripts/config -m HW_RANDOM_XGENE 
    scripts/config -e HI3660_MBOX 
    scripts/config -e K3_DMA 
    scripts/config -e MMC_SDHCI_IPROC 
    scripts/config -e MTK_INFRACFG 
    scripts/config -e IPMI_DMI_DECODE 
    scripts/config -e SERIAL_8250_16550A_VARIANTS 
    scripts/config -e SERIAL_XILINX_PS_UART 
    scripts/config -e MTD_BLOCK 
    scripts/config -m SPI_DESIGNWARE 
    scripts/config -e PINCTRL_PFC_R8A77951 
    scripts/config -e ARM_GIC_PM 
    scripts/config -e SERIAL_8250_EXAR 
    scripts/config -e PINCTRL_PFC_R8A77990 
    scripts/config -e CAVIUM_ERRATUM_23144 
    scripts/config -e HIBERNATION_SNAPSHOT_DEV 
    scripts/config -e LS_SCFG_MSI 
    scripts/config -e CLK_VEXPRESS_OSC 
    scripts/config -e CLK_R8A77961 
    scripts/config -e REGULATOR_HI655X 
    scripts/config -e MTD_CFI_ADV_OPTIONS 
    scripts/config -m I2C_HID_CORE 
    scripts/config -e SUNRPC 
    scripts/config -e MDIO_BUS_MUX_MMIOREG 
    scripts/config -e SUN8I_R_CCU 
    scripts/config -m MDIO 
    scripts/config -m RTL_CARDS 
    scripts/config -e MMC_ARMMMCI 
    scripts/config -e DMA_VIRTUAL_CHANNELS 
    scripts/config -e WILINK_PLATFORM_DATA 
    scripts/config -e VIRTIO_PCI_LIB 
    scripts/config -e IMX_IRQSTEER 
    scripts/config -e VFIO_PCI_MMAP 
    scripts/config -m RAID6_PQ 
    scripts/config -e I2C_MUX_PCA954x 
    scripts/config -e ARCH_RENESAS 
    scripts/config -e ARM64_PTR_AUTH_KERNEL 
    scripts/config -e PINCTRL_IPROC_GPIO 
    scripts/config -e PINCTRL_MT8183 
    scripts/config -e SYSC_R8A77970 
    scripts/config -e PINCTRL_SUN50I_A100_R 
    scripts/config -e RENESAS_IRQC 
    scripts/config -e HI6220_MBOX 
    scripts/config -m DRM_SUN4I 
    scripts/config -e OWL_PM_DOMAINS_HELPER 
    scripts/config -e SERIAL_FSL_LPUART 
    scripts/config -e MTD_NAND_CORE 
    scripts/config -e MLX4_CORE_GEN2 
    scripts/config -e PINCTRL_IMX8MP 
    scripts/config -e TI_K3_AM65_CPSW_NUSS 
    scripts/config -m DRM_IMX_DCSS 
    scripts/config -m IIO_ST_LSM6DSX_SPI 
    scripts/config -e CFG80211_DEFAULT_PS 
    scripts/config -e HID_BELKIN 
    scripts/config -m EXTCON_PTN5150 
    scripts/config -e IRQ_TIME_ACCOUNTING 
    scripts/config -e ATA_BMDMA 
    scripts/config -e DRM_RCAR_VSP 
    scripts/config -e ARCH_RANDOM 
    scripts/config -e NVMEM_IMX_OCOTP 
    scripts/config -m DVB_CORE 
    scripts/config -e PHY_NS2_PCIE 
    scripts/config -e MVEBU_PIC 
    scripts/config -e SYSC_RCAR 
    scripts/config -e AUXILIARY_BUS 
    scripts/config -e ACPI_PROCESSOR 
    scripts/config -e GPIO_MAX732X 
    scripts/config -m DRM_SII902X 
    scripts/config -e MFD_BD9571MWV 
    scripts/config -m DRM_TTM 
    scripts/config --set-val MX3_IPU_IRQS 4
    scripts/config -e I2C_MT65XX 
    scripts/config -e I2C_CROS_EC_TUNNEL 
    scripts/config -e PINCTRL_PFC_R8A77980 
    scripts/config -e MEMORY_FAILURE 
    scripts/config -e DIMLIB 
    scripts/config -e CLK_R8A774C0 
    scripts/config -e MMC_SDHI_INTERNAL_DMAC 
    scripts/config -e MVMDIO 
    scripts/config -e PINCTRL_IMX8MN 
    scripts/config -e ARCH_ZYNQMP 
    scripts/config -m CRYPTO_XXHASH 
    scripts/config -e PCIE_VISCONTI_HOST 
    scripts/config -e MST_IRQ 
    scripts/config -m REGULATOR_TPS65132 
    scripts/config -m SMSC_PHY 
    scripts/config -e XEN_EFI 
    scripts/config -e FSL_EDMA 
    scripts/config -m DRM_THINE_THC63LVD1024 
    scripts/config -m DRM_MALI_DISPLAY 
    scripts/config -e CLK_R8A774B1 
    scripts/config -e BALLOON_COMPACTION 
    scripts/config -m CRYPTO_DEV_AMLOGIC_GXL 
    scripts/config -e CLK_ACTIONS 
    scripts/config -e TCG_TPM 
    scripts/config -e FW_LOADER_USER_HELPER 
    scripts/config -e I2C_UNIPHIER_F 
    scripts/config -e CGROUP_PERF 
    scripts/config -e SERIAL_SH_SCI 
    scripts/config -m DRM_PARADE_PS8640 
    scripts/config -e GPIO_UNIPHIER 
    scripts/config -e HNS3 
    scripts/config -m RENESAS_RPCIF 
    scripts/config -e HVC_IRQ 
    scripts/config -e PHY_MVEBU_A3700_COMPHY 
    scripts/config -e PNFS_FLEXFILE_LAYOUT 
    scripts/config -m IIO_ST_MAGN_SPI_3AXIS 
    scripts/config -m INTERCONNECT_IMX8MN 
    scripts/config -e RESET_HISI 
    scripts/config -e XEN_PCI_STUB 
    scripts/config -e SC_GCC_7180 
    scripts/config -e I2C_IMX 
    scripts/config -e VFIO_PCI_INTX 
    scripts/config -e FW_LOADER_PAGED_BUF 
    scripts/config -e VIRTIO_BLK 
    scripts/config -m HW_RANDOM_ARM_SMCCC_TRNG 
    scripts/config -e PINCTRL_IMX8MQ 
    scripts/config -e SERIAL_IMX_CONSOLE 
    scripts/config -e HUGETLB_PAGE 
    scripts/config -e MTD_PHYSMAP 
    scripts/config -e SERIAL_MVEBU_CONSOLE 
    scripts/config -e HAVE_SETUP_PER_CPU_AREA 
    scripts/config -e PINCTRL_MT8516 
    scripts/config -m CRYPTO_DEV_FSL_CAAM_JR 
    scripts/config -e XEN_DOM0 
    scripts/config -e PACKING 
    scripts/config -e GPIO_XGENE_SB 
    scripts/config -m DRM_I2C_NXP_TDA998X 
    scripts/config -m DRM_PANEL_SIMPLE 
    scripts/config -e SYSC_R8A774B1 
    scripts/config -e RTC_DRV_ARMADA38X 
    scripts/config -e SNI_AVE 
    scripts/config -e DMA_ENGINE_RAID 
    scripts/config -e CROS_EC_I2C 
    scripts/config -e MFD_HI655X_PMIC 
    scripts/config -e CLK_R8A7795 
    scripts/config -e MTD_NAND_DENALI_DT 
    scripts/config -e MACB_USE_HWSTAMP 
    scripts/config -e MFD_SEC_CORE 
    scripts/config -e PHY_TI_GMII_SEL 
    scripts/config -e TI_SCI_INTA_IRQCHIP 
    scripts/config -e SUN50I_H6_R_CCU 
    scripts/config -m DWMAC_IMX8 
    scripts/config -e PREEMPT_BUILD 
    scripts/config -e SCSI_SAS_HOST_SMP 
    scripts/config -e ZYNQMP_PM_DOMAINS 
    scripts/config -e DEBUG_INFO 
    scripts/config -e PINCTRL_PFC_R8A779A0 
    scripts/config -e ARCH_R8A77990 
    scripts/config -e ACPI_CCA_REQUIRED 
    scripts/config -e CRASH_CORE 
    scripts/config -m VCNL4000 
    scripts/config -m IIO_ST_LSM6DSX_I2C 
    scripts/config -e CLK_RZG2L 
    scripts/config -e SH_TIMER_CMT 
    scripts/config -e OF_RESOLVE 
    scripts/config -e I2C_QUP 
    scripts/config -m DRM_LIMA 
    scripts/config -e GPIO_MXC 
    scripts/config -m ATL1C 
    scripts/config -e SUN50I_H616_CCU 
    scripts/config -e MFD_ALTERA_SYSMGR 
    scripts/config -e REGULATOR_MT6358 
    scripts/config -e NEED_PER_CPU_EMBED_FIRST_CHUNK 
    scripts/config -e SYS_SUPPORTS_SH_CMT 
    scripts/config -m DRM_PANEL_MANTIX_MLAF057WE51 
    scripts/config -e PINCTRL_SUN50I_H616_R 
    scripts/config -e ARCH_R8A77980 
    scripts/config -e PINCTRL_SUN50I_A64_R 
    scripts/config -e DW_APB_TIMER 
    scripts/config -e SM_GCC_8250 
    scripts/config -e MMC_STM32_SDMMC 
    scripts/config -e RTC_DRV_DS3232_HWMON 
    scripts/config -e NVMEM_IMX_OCOTP_SCU 
    scripts/config -e FSL_MC_DPIO 
    scripts/config -e PREEMPT_COUNT 
    scripts/config -e KEXEC_FILE 
    scripts/config -e OWL_DMA 
    scripts/config -m IPMI_HANDLER 
    scripts/config -m PINCTRL_LPASS_LPI 
    scripts/config -e ARCH_UNIPHIER 
    scripts/config -m PCI_EPF_TEST 
    scripts/config -m PHY_SUN6I_MIPI_DPHY 
    scripts/config -e IMX_INTMUX 
    scripts/config -e BNX2X_SRIOV 
    scripts/config -e MMC_SDHCI_XENON 
    scripts/config -e CAVIUM_ERRATUM_27456 
    scripts/config -e DVB_DYNAMIC_MINORS 
    scripts/config -m INTERCONNECT_IMX8MQ 
    scripts/config -m CRYPTO_DEV_SUN8I_CE 
    scripts/config -e SERIAL_OWL 
    scripts/config -m DRM_PANEL_LVDS 
    scripts/config -e MTD_DATAFLASH 
    scripts/config -e PINCTRL_IMX_SCU 
    scripts/config -e POWER_RESET_XGENE 
    scripts/config -e PINCTRL_UNIPHIER 
    scripts/config -e CLK_LS1028A_PLLDIG 
    scripts/config -e CLK_SUNXI_PRCM_SUN9I 
    scripts/config -e PINCTRL_QCS404 
    scripts/config -e PCIE_IPROC 
    scripts/config -e SCSI_SAS_ATTRS 
    scripts/config -e RENESAS_WDT 
    scripts/config -e SPRD_SC9860_CLK 
    scripts/config -e SERIAL_8250_SHARE_IRQ 
    scripts/config -e ARCH_R8A774A1 
    scripts/config -m PHY_MTK_MIPI_DSI 
    scripts/config -e PINCTRL_SH_PFC 
    scripts/config -e ATA_SFF 
    scripts/config -e REGULATOR_PF8X00 
    scripts/config -e MTD_CFI_NOSWAP 
    scripts/config -e CLK_IMX8MN 
    scripts/config -e HISILICON_IRQ_MBIGEN 
    scripts/config -e RCAR_DMAC 
    scripts/config -e ACPI_APEI_MEMORY_FAILURE 
    scripts/config -e HNS_DSAF 
    scripts/config -e RCU_TRACE 
    scripts/config -e MEMTEST 
    scripts/config --set-val LEGACY_PTY_COUNT 16
    scripts/config -e XLNX_EVENT_MANAGER 
    scripts/config -e NFS_USE_KERNEL_DNS 
    scripts/config -m DRM_MXSFB 
    scripts/config -e ARM64_ERRATUM_1530923 
    scripts/config -e PINCTRL_SC7280 
    scripts/config -m DWMAC_SUN8I 
    scripts/config -e MEGARAID_SAS 
    scripts/config -e ALPINE_MSI 
    scripts/config -e MMC_DW_K3 
    scripts/config -e ARM64_ERRATUM_1508412 
    scripts/config -e PCI_IMX6 
    scripts/config -e MTD_BLKDEVS 
    scripts/config -e ARM_SMC_WATCHDOG 
    scripts/config -e PTP_1588_CLOCK 
    scripts/config -e SM_GPUCC_8150 
    scripts/config -m MACVLAN 
    scripts/config -e PINCTRL_SUN8I_H3_R 
    scripts/config -e NFS_V4_1 
    scripts/config -e HWSPINLOCK 
    scripts/config -e CROS_EC_LIGHTBAR 
    scripts/config -e STACKPROTECTOR_STRONG 
    scripts/config -e VIRTIO_BALLOON 
    scripts/config -e FB_EFI 
    scripts/config -e HISILICON_ERRATUM_161600802 
    scripts/config -e REGULATOR_MAX77620 
    scripts/config -e MVEBU_ODMI 
    scripts/config -m NVME_CORE 
    scripts/config -e SYSC_R8A779A0 
    scripts/config -e ZYNQMP_POWER 
    scripts/config -e RD_BZIP2 
    scripts/config -e ARM64_MTE 
    scripts/config -e MTD_NAND_ECC 
    scripts/config -e GPIO_DAVINCI 
    scripts/config -e PINCTRL_RENESAS 
    scripts/config -m QRTR_SMD 
    scripts/config -e RC_DEVICES 
    scripts/config -m ARM_SMMU_V3_PMU 
    scripts/config -m IIO_ST_SENSORS_SPI 
    scripts/config -e PLATFORM_MHU 
    scripts/config -e RESET_UNIPHIER 
    scripts/config -e SDM_GPUCC_845 
    scripts/config -e XEN_GRANT_DEV_ALLOC 
    scripts/config -e REBOOT_MODE 
    scripts/config -m PWM_MTK_DISP 
    scripts/config -e PCIE_MOBIVEIL 
    scripts/config -m GPIO_REGMAP 
    scripts/config -e PINCTRL_MTK_PARIS 
    scripts/config -e ARCH_SUNXI 
    scripts/config -m FPGA_REGION 
    scripts/config -e NFS_V4_2_SSC_HELPER 
    scripts/config -m ARM_IMX_CPUFREQ_DT 
    scripts/config -e SCSI_UFSHCD 
    scripts/config -e REGULATOR_HI6421V530 
    scripts/config -e MMC_SDHCI_ACPI 
    scripts/config -e PTP_1588_CLOCK_QORIQ 
    scripts/config -e SCSI_UFSHCD_PLATFORM 
    scripts/config -e PINCTRL_IMX 
    scripts/config -e PATA_TIMINGS 
    scripts/config -e I2C_OMAP 
    scripts/config -e PCIE_RCAR_HOST 
    scripts/config -e ARCH_R8A779F0 
    scripts/config -m CRYPTO_DEV_CCREE 
    scripts/config -e PCIE_IPROC_MSI 
    scripts/config -e SUNXI_SRAM 
    scripts/config -m INTERCONNECT_IMX8MM 
    scripts/config -e GPIO_DWAPB 
    scripts/config -e PINCTRL_MT8192 
    scripts/config -e TI_SYSCON_CLK 
    scripts/config -e DEBUG_INFO_DWARF_TOOLCHAIN_DEFAULT 
    scripts/config -e ARM64_ERRATUM_1024718 
    scripts/config -e SQUASHFS_DECOMP_SINGLE 
    scripts/config -e CLK_OWL_S900 
    scripts/config -e RESET_IMX7 
    scripts/config -e RZ_DMAC 
    scripts/config -e CRYPTO_DEV_FSL_CAAM_RNG_API 
    scripts/config -m ARM_IMX_BUS_DEVFREQ 
    scripts/config -e HID_CYPRESS 
    scripts/config -e SERIAL_8250_PNP 
    scripts/config -e HID_MONTEREY 
    scripts/config -e SERIAL_XILINX_PS_UART_CONSOLE 
    scripts/config -e SPI_CADENCE_QUADSPI 
    scripts/config -m RC_MAP 
    scripts/config -e REGULATOR_PCA9450 
    scripts/config -e RTC_DRV_SUN6I 
    scripts/config -m CRC_CCITT 
    scripts/config -e RESET_TI_SCI 
    scripts/config -e PINCTRL_MT7986 
    scripts/config -e IPMI_PLAT_DATA 
    scripts/config -e RD_LZMA 
    scripts/config -e RD_LZO 
    scripts/config -e MTK_PMIC_WRAP 
    scripts/config -e I2C_RIIC 
    scripts/config -m BLK_DEV_NVME 
    scripts/config -m GNSS 
    scripts/config -e PINCTRL_ARMADA_CP110 
    scripts/config -e I2C_DESIGNWARE_PLATFORM 
    scripts/config -e SYSC_R8A77960 
    scripts/config -m PHY_MIXEL_MIPI_DPHY 
    scripts/config -e MTK_EFUSE 
    scripts/config -e ARMADA_37XX_CLK 
    scripts/config -m PWM_IMX27 
    scripts/config -m DRM_DW_HDMI_CEC 
    scripts/config -e HVC_XEN 
    scripts/config -e MFD_VEXPRESS_SYSREG 
    scripts/config -e GENERIC_PINMUX_FUNCTIONS 
    scripts/config -e ARM_GIC_V3_ITS_FSL_MC 
    scripts/config -m UACCE 
    scripts/config -e RC_DECODERS 
    scripts/config -e CLK_RCAR_GEN3_CPG 
    scripts/config -e IP_PNP_BOOTP 
    scripts/config -e PINCTRL_ARMADA_AP806 
    scripts/config -e REGULATOR_UNIPHIER 
    scripts/config -e MXC_CLK_SCU 
    scripts/config -e PINCTRL_PFC_R8A77961 
    scripts/config -e EFI_VARS_PSTORE 
    scripts/config -e PINCTRL_MAX77620 
    scripts/config -e RESET_UNIPHIER_GLUE 
    scripts/config -e ARCH_XGENE 
    scripts/config -e PCI_LAYERSCAPE 
    scripts/config -e ACPI_MCFG 
    scripts/config -e MTD_NAND_ECC_SW_HAMMING 
    scripts/config -e SUNRPC_BACKCHANNEL 
    scripts/config -e ARCH_R8A77965 
    scripts/config -e PINCTRL_SC7180 
    scripts/config -e HIBERNATION 
    scripts/config -e ARM64_ERRATUM_1165522 
    scripts/config -e DRM_I2C_ADV7511_CEC 
    scripts/config -e CROS_EC_SYSFS 
    scripts/config -m GPIO_SL28CPLD 
    scripts/config -e PINCTRL_OWL 
    scripts/config -e PINCTRL_PFC_R8A774A1 
    scripts/config -e IMX_SCU 
    scripts/config -e XEN_BACKEND 
    scripts/config -e PCIE_DW 
    scripts/config -e CAVIUM_ERRATUM_23154 
    scripts/config -m TYPEC_HD3SS3220 
    scripts/config -m WL18XX 
    scripts/config -m DRM_VRAM_HELPER 
    scripts/config -e PCIE_ALTERA_MSI 
    scripts/config -m DRM_PANEL_TRULY_NT35597_WQXGA 
    scripts/config -e PCI_HOST_GENERIC 
    scripts/config -e SYSC_R8A774C0 
    scripts/config -e RD_XZ 
    scripts/config -m IPMI_SI 
    scripts/config -m SL28CPLD_WATCHDOG 
    scripts/config -e RANDOMIZE_MODULE_REGION_FULL 
    scripts/config -e CRYPTO_DEV_FSL_CAAM_CRYPTO_API 
    scripts/config -e REGULATOR_MP8859 
    scripts/config -e GPIO_MVEBU 
    scripts/config -e PNP 
    scripts/config -m DRM_PL111 
    scripts/config -e ARM64_ERRATUM_1418040 
    scripts/config -e VFIO_PCI 
    scripts/config -e ARMADA_CP110_SYSCON 
    scripts/config -e TCG_TIS_I2C_INFINEON 
    scripts/config -e GENERIC_ARCH_NUMA 
    scripts/config -m REGMAP_SLIMBUS 
    scripts/config -e PNFS_FILE_LAYOUT 
    scripts/config -e ARCH_LAYERSCAPE 
    scripts/config --set-val CRYPTO_DEV_FSL_CAAM_RINGSIZE 9
    scripts/config -e SYSC_R8A7795 
    scripts/config -m RTC_DRV_PCF85363 
    scripts/config -e PROC_VMCORE 
    scripts/config -m DRM_SUN8I_TCON_TOP 
    scripts/config -e PINCTRL_PFC_R8A77960 
    scripts/config -e PCI_ECAM 
    scripts/config -e PTP_1588_CLOCK_DTE 
    scripts/config -e AHCI_CEVA 
    scripts/config -e ARM_PMU_ACPI 
    scripts/config -e ACPI_GTDT 
    scripts/config -e CLK_RENESAS_DIV6 
    scripts/config -e FB_MODE_HELPERS 
    scripts/config -e UNIPHIER_WATCHDOG 
    scripts/config -e TI_MESSAGE_MANAGER 
    scripts/config -m DRM_PANEL_BOE_TV101WUM_NL6 
    scripts/config -e PINCTRL_UNIPHIER_LD20 
    scripts/config -e CROS_EC_SPI 
    scripts/config -e PRINT_QUOTA_WARNING 
    scripts/config -e PSTORE_COMPRESS 
    scripts/config -e SUNRPC_GSS 
    scripts/config -e MMC_OWL 
    scripts/config -e SERIAL_SH_SCI_EARLYCON 
    scripts/config -m FPGA_MGR_STRATIX10_SOC 
    scripts/config -e PCIE_LAYERSCAPE_GEN4 
    scripts/config -e PINCTRL_SUNXI 
    scripts/config -e PCIE_ARMADA_8K 
    scripts/config -m SPI_SPIDEV 
    scripts/config -e NUMA_BALANCING 
    scripts/config -m RTC_DRV_PCF2127 
    scripts/config -e MFD_SPMI_PMIC 
    scripts/config -e SCSI_SAS_LIBSAS 
    scripts/config -e I2C_MV64XXX 
    scripts/config -m GNSS_MTK_SERIAL 
    scripts/config -e INTEGRITY 
    scripts/config -e SUN50I_DE2_BUS 
    scripts/config -e TI_K3_UDMA_GLUE_LAYER 
    scripts/config -e CEC_NOTIFIER 
    scripts/config -e GPIO_MAX77620 
    scripts/config -e RTC_DRV_CROS_EC 
    scripts/config -e SL28CPLD_INTC 
    scripts/config -m MWIFIEX_PCIE 
    scripts/config -e ROOT_NFS 
    scripts/config -e PCIE_DW_HOST 
    scripts/config -e FONT_8x8 
    scripts/config -e EDAC_LEGACY_SYSFS 
    scripts/config -e HAVE_ACPI_APEI 
    scripts/config -e PREEMPT 
    scripts/config -m SENSORS_LM90 
    scripts/config -e MTD_NAND_MARVELL 
    scripts/config -e ARMADA_AP806_SYSCON 
    scripts/config -e PINCTRL_PFC_R8A774C0 
    scripts/config -e ARM64_ERRATUM_1286807 
    scripts/config -e TASKS_RCU 
    scripts/config -m DRM_I2C_SIL164 
    scripts/config -e CLK_R8A77980 
    scripts/config -e MDIO_CAVIUM 
    scripts/config -e SYSC_R8A77961 
    scripts/config -e MTK_MMSYS 
    scripts/config -e PREEMPTION 
    scripts/config -m MARVELL_PHY 
    scripts/config -e HID_EZKEY 
    scripts/config -e MEMORY 
    scripts/config -e MFD_SL28CPLD 
    scripts/config -e SERIAL_FSL_LPUART_CONSOLE 
    scripts/config -e DECOMPRESS_LZO 
    scripts/config -m IMX_SDMA 
    scripts/config -e NVIDIA_CARMEL_CNP_ERRATUM 
    scripts/config -e ARCH_SEATTLE 
    scripts/config -e TI_SCI_CLK 
    scripts/config -m CRYPTO_DEV_FSL_CAAM_AHASH_API_DESC 
    scripts/config -e DEBUG_INFO_REDUCED 
    scripts/config -e SPI_FSL_QUADSPI 
    scripts/config -e RUNTIME_TESTING_MENU 
    scripts/config -m SENSORS_JC42 
    scripts/config -e SMSC911X 
    scripts/config -e ACPI_HOTPLUG_CPU 
    scripts/config -e PINCTRL_RZG2L 
    scripts/config -e SC_GCC_7280 
    scripts/config -e PINCTRL_S700 
    scripts/config -e RTC_INTF_PROC 
    scripts/config -e ARM64_TLB_RANGE 
    scripts/config -m HW_RANDOM_OMAP 
    scripts/config -e PINCTRL_UNIPHIER_PXS3 
    scripts/config -e PSTORE_DEFLATE_COMPRESS_DEFAULT 
    scripts/config -e SERIAL_8250_EXTENDED 

  - |
    make -j1 olddefconfig

  - |
    . ./config-utils.sh

  build-commands:
  - make -j$(nproc)

  install-commands:
  - |
    install -Dm644 "%{image-name}" '%{install-root}%{bootdir}/vmlinuz'
    install -Dm644 System.map '%{install-root}%{bootdir}/System.map'
    install -Dm644 .config '%{install-root}%{bootdir}/config'
    make -j1 INSTALL_MOD_PATH='%{install-root}%{prefix}' modules_install

  - |
    release=$(make -s kernelrelease)
    targetdir="%{install-root}%{prefix}/src/linux-${release}"

    rm "%{install-root}%{indep-libdir}/modules/${release}"/{source,build}

    to_copy=(
      Makefile
      Module.symvers
      .config
      "arch/%{src-arch}/include"
      "arch/%{src-arch}/Makefile"
      scripts
      include
    )
    if [ "$(scripts/config -s STACK_VALIDATION)" = y ]; then
      to_copy+=(tools/objtool/objtool)
    fi
    for file in "${to_copy[@]}"
    do
      targetfile="${targetdir}/${file}"
      dir="$(dirname "${targetfile}")"
      [ -d "${dir}" ] || install -d "${dir}"
      cp -aT "${file}" "${targetfile}"
    done

    ln -sr "${targetdir}" "%{install-root}%{indep-libdir}/modules/${release}/source"
    ln -sr "${targetdir}" "%{install-root}%{indep-libdir}/modules/${release}/build"

  (?):
  - arch in ["aarch64", "arm", "riscv64"]:
      install-commands:
        (>):
        - |
          make -j1 INSTALL_DTBS_PATH='%{install-root}%{bootdir}/dtbs' dtbs_install

public:
  bst:
    integration-commands:
    - |
      cd '%{indep-libdir}/modules'
      for version in *; do
        depmod -b '%{prefix}' -a "$version";
      done

    split-rules:
      devel:
        (>):
        - '%{bootdir}/System.map'

(@):
- include/linux.yml
