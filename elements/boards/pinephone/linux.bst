kind: manual
description: Linux kernel configured for use in PinePhone.

depends:
- freedesktop-sdk.bst:components/kmod.bst
- boards/common/linux-firmware.bst

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
    make pinephone_defconfig

  - |
    . ./config-utils.sh
    rm expected-configs

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

    scripts/config --set-str EXTRA_FIRMWARE "ov5640_af.bin brcm/brcmfmac43455-sdio.pine64,pinephone-pro.txt rtl_bt/rtl8723cs_xx_fw.bin rtl_bt/rtl8723cs_xx_config.bin rtl_bt/rtl8723bs_config-pine64.bin"
    scripts/config --set-str EXTRA_FIRMWARE_DIR "/workspace/megous.com/orangepi-pc/firmware"

    scripts/config -e IKCONFIG
    scripts/config -e IKCONFIG_PROC

    scripts/config -m HW_RANDOM_XGENE 
    scripts/config -m RESET_BERLIN 
    scripts/config -e SERIAL_SH_SCI_EARLYCON 
    scripts/config -e IGB 
    scripts/config -e IP_PNP 
    scripts/config -e UNINLINE_SPIN_UNLOCK 
    scripts/config -e ACPI_PROCESSOR_IDLE 
    scripts/config -e HAVE_KVM_VCPU_RUN_PID_CHANGE 
    scripts/config -e OWL_PM_DOMAINS_HELPER 
    scripts/config -e MTK_INFRACFG 
    scripts/config -e HAVE_KVM_IRQCHIP 
    scripts/config -m MICROCHIP_PHY 
    scripts/config -e ARCH_R8A779A0 
    scripts/config -e ARCH_ZYNQMP 
    scripts/config -e SPI_MEM 
    scripts/config --set-val VGA_ARB_MAX_GPUS 16
    scripts/config -e THP_SWAP 
    scripts/config -e ARM64_TLB_RANGE 
    scripts/config -e SERIAL_FSL_LPUART 
    scripts/config -e RANDOMIZE_BASE 
    scripts/config -e PREEMPT_NOTIFIERS 
    scripts/config -e BLK_MQ_VIRTIO 
    scripts/config -e HWMON 
    scripts/config -e SYS_HYPERVISOR 
    scripts/config -e ARM_SCPI_CPUFREQ 
    scripts/config -m HW_RANDOM_IPROC_RNG200 
    scripts/config -e SERIAL_8250_UNIPHIER 
    scripts/config -e TEE_BNXT_FW 
    scripts/config -e SUNRPC_GSS 
    scripts/config -m I2C_HID_ACPI 
    scripts/config -e DECOMPRESS_ZSTD 
    scripts/config -m RAID_ATTRS 
    scripts/config -e ACPI_REDUCED_HARDWARE_ONLY 
    scripts/config -e HAVE_SCHED_AVG_IRQ 
    scripts/config -e ARM64_ERRATUM_1286807 
    scripts/config -e MVPP2 
    scripts/config -e PCI_ENDPOINT_CONFIGFS 
    scripts/config -e MFD_MT6397 
    scripts/config -m HW_RANDOM_NPCM 
    scripts/config -e RTC_DRV_PL031 
    scripts/config -m CRYPTO_DEV_CCREE 
    scripts/config -e ACPI_SPCR_TABLE 
    scripts/config -e RTC_DRV_S3C 
    scripts/config -e VFIO_VIRQFD 
    scripts/config -e OF_OVERLAY 
    scripts/config -e E1000E 
    scripts/config -e STRICT_DEVMEM 
    scripts/config -e NFS_V4_2 
    scripts/config -m QRTR_MHI 
    scripts/config -e PATA_OF_PLATFORM 
    scripts/config -e SERIO_AMBAKMI 
    scripts/config -e PATA_TIMINGS 
    scripts/config -e SUNRPC 
    scripts/config -e IMX_GPCV2_PM_DOMAINS 
    scripts/config -e ARM64_ERRATUM_1463225 
    scripts/config -e ARM64_ERRATUM_834220 
    scripts/config -e DPAA2_CONSOLE 
    scripts/config -e ARCH_KEEMBAY 
    scripts/config -e MTD_NAND_DENALI 
    scripts/config -e GPIO_MAX77620 
    scripts/config -e ACPI_APEI_SEA 
    scripts/config -e TI_SCI_PM_DOMAINS 
    scripts/config -m PWM_IMX27 
    scripts/config -e PHY_NS2_PCIE 
    scripts/config -e FSL_RCPM 
    scripts/config -e PCIE_RCAR_HOST 
    scripts/config -m RTC_DRV_RV8803 
    scripts/config -e NUMA_BALANCING_DEFAULT_ENABLED 
    scripts/config -m ROCKCHIP_SARADC 
    scripts/config -m NVMEM_RMEM 
    scripts/config -e PCIE_IPROC 
    scripts/config -e SERIAL_IMX 
    scripts/config -m CRYPTO_DEV_HISI_TRNG 
    scripts/config -m PM8916_WATCHDOG 
    scripts/config -m MARVELL_PHY 
    scripts/config -e STACKPROTECTOR_PER_TASK 
    scripts/config -e PHYLINK 
    scripts/config -e ARCH_RZG2L 
    scripts/config -m ARM_IMX8M_DDRC_DEVFREQ 
    scripts/config -e VLAN_8021Q_MVRP 
    scripts/config -e INTERVAL_TREE 
    scripts/config -e PHYLIB 
    scripts/config -e IPQ_GCC_8074 
    scripts/config -m MAX9611 
    scripts/config -e ARM64_ERRATUM_2077057 
    scripts/config -m MSCC_OCELOT_SWITCH_LIB 
    scripts/config -e ARCH_R8A77990 
    scripts/config -e PCIE_MOBIVEIL_HOST 
    scripts/config -e NF_CT_PROTO_SCTP 
    scripts/config -e GPIO_PCA953X_IRQ 
    scripts/config -e NUMA_BALANCING 
    scripts/config -e GCC_PLUGINS 
    scripts/config --set-val MX3_IPU_IRQS 4
    scripts/config -e VIRTIO_BALLOON 
    scripts/config -e SH_TIMER_TMU 
    scripts/config -e FSL_MC_DPIO 
    scripts/config -m WLCORE 
    scripts/config -m PWM_CROS_EC 
    scripts/config -e REGULATOR_MAX8973 
    scripts/config -e DECOMPRESS_LZO 
    scripts/config -e ARMADA_AP_CP_HELPER 
    scripts/config -e ARCH_R9A07G043 
    scripts/config -m INTERCONNECT_IMX 
    scripts/config -m NVME_CORE 
    scripts/config -e CRC_ITU_T 
    scripts/config -e MEMTEST 
    scripts/config -e BRIDGE_VLAN_FILTERING 
    scripts/config -e RTC_DRV_S5M 
    scripts/config -e HID_LOGITECH 
    scripts/config -e I2C_DESIGNWARE_PLATFORM 
    scripts/config -e ACPI_APEI_PCIEAER 
    scripts/config -e TI_K3_UDMA 
    scripts/config -e RENESAS_RZG2LWDT 
    scripts/config -e MTD_SPI_NOR_SWP_DISABLE_ON_VOLATILE 
    scripts/config -e I2C_PXA 
    scripts/config -e PATA_PLATFORM 
    scripts/config -e ARM64_MTE 
    scripts/config -e PREEMPTION 
    scripts/config -e IMX_MBOX 
    scripts/config -m CRYPTO_DEV_AMLOGIC_GXL 
    scripts/config -e PSTORE_COMPRESS 
    scripts/config -e MV_XOR_V2 
    scripts/config -e GPIO_VF610 
    scripts/config -e MVMDIO 
    scripts/config -e HAVE_KVM_CPU_RELAX_INTERCEPT 
    scripts/config -e RTC_DRV_CROS_EC 
    scripts/config -e SCSI_SAS_HOST_SMP 
    scripts/config -e SECURITY 
    scripts/config -e ATA_FORCE 
    scripts/config -e E1000 
    scripts/config -e REGULATOR_MAX77620 
    scripts/config -e I2C_RCAR 
    scripts/config -m RTC_DRV_PCF85363 
    scripts/config -e SM_GCC_8150 
    scripts/config -e IPMI_DMI_DECODE 
    scripts/config -m SPI_RPCIF 
    scripts/config -m REGULATOR_VCTRL 
    scripts/config -e SERIAL_8250_SHARE_IRQ 
    scripts/config -e HAVE_ARCH_KASAN_HW_TAGS 
    scripts/config -e DECOMPRESS_BZIP2 
    scripts/config -e FSL_DPAA 
    scripts/config -e RD_LZO 
    scripts/config --set-val ARCH_NR_GPIO 2048
    scripts/config -e ARM64_ERRATUM_2457168 
    scripts/config -e RTC_DRV_ARMADA38X 
    scripts/config -m SDM_CAMCC_845 
    scripts/config -e ASYNC_TX_ENABLE_CHANNEL_SWITCH 
    scripts/config -e IP_PNP_DHCP 
    scripts/config -m IPMI_DEVICE_INTERFACE 
    scripts/config -e PTP_1588_CLOCK_KVM 
    scripts/config -e ACPI_I2C_OPREGION 
    scripts/config -m BNX2X 
    scripts/config -e XLNX_EVENT_MANAGER 
    scripts/config -e MEMORY_FAILURE 
    scripts/config -e MX3_IPU 
    scripts/config -e AHCI_QORIQ 
    scripts/config -e VIRTUALIZATION 
    scripts/config -e ASYNC_TX_DISABLE_PQ_VAL_DMA 
    scripts/config -m RTL_CARDS 
    scripts/config -e ARCH_R8A77950 
    scripts/config -e ARM_SCMI_HAVE_SHMEM 
    scripts/config -e IP_PNP_BOOTP 
    scripts/config -e SERIAL_MVEBU_UART 
    scripts/config -e ARCH_MXC 
    scripts/config -e GRACE_PERIOD 
    scripts/config -e MTK_IOMMU 
    scripts/config -e RESET_UNIPHIER 
    scripts/config -e VFIO_IOMMU_TYPE1 
    scripts/config -m RTC_DRV_RV3028 
    scripts/config -e ARCH_SPRD 
    scripts/config -e BGMAC 
    scripts/config -e NFS_V4_1 
    scripts/config -e FW_LOADER_USER_HELPER 
    scripts/config -e PLATFORM_MHU 
    scripts/config -e ATA_BMDMA 
    scripts/config -m B53_SRAB_DRIVER 
    scripts/config -e UEFI_CPER_ARM 
    scripts/config -m IIO_CROS_EC_BARO 
    scripts/config -m HW_RANDOM_MTK 
    scripts/config -e TIMER_ACPI 
    scripts/config -m FSL_IMX8_DDR_PMU 
    scripts/config -e MDIO_XGENE 
    scripts/config -e CGROUP_PERF 
    scripts/config -m RTC_DRV_RX8581 
    scripts/config -e GPIO_PCA953X 
    scripts/config -e PCI_MSI_IRQ_DOMAIN 
    scripts/config -m CRYPTO_MICHAEL_MIC 
    scripts/config -e SQUASHFS_DECOMP_SINGLE 
    scripts/config -e SERIAL_8250_OMAP 
    scripts/config -m MACVLAN 
    scripts/config -e PCIE_LAYERSCAPE_GEN4 
    scripts/config -e ARM64_SME 
    scripts/config -m PWM_SL28CPLD 
    scripts/config -e REGULATOR_PCA9450 
    scripts/config -e GPIO_MPC8XXX 
    scripts/config -e CAVIUM_ERRATUM_23154 
    scripts/config -e RCU_TRACE 
    scripts/config -e KSM 
    scripts/config -e NF_CT_PROTO_UDPLITE 
    scripts/config -e SOC_TI 
    scripts/config -e QCS_GCC_404 
    scripts/config -e POWER_RESET_XGENE 
    scripts/config -e RENESAS_IRQC 
    scripts/config -e SATA_SIL24 
    scripts/config --set-val CRYPTO_DEV_FSL_CAAM_RINGSIZE 9
    scripts/config -e RAVB 
    scripts/config -e 9P_FS 
    scripts/config -e SRAM 
    scripts/config -e VIRTIO_MMIO 
    scripts/config -e SPI_DYNAMIC 
    scripts/config -e RAID6_PQ_BENCHMARK 
    scripts/config -e RD_BZIP2 
    scripts/config -e MTD_CFI_STAA 
    scripts/config -e ACPI_CONTAINER 
    scripts/config -e HVC_IRQ 
    scripts/config -e ARCH_R8A774C0 
    scripts/config -e NUMA 
    scripts/config -e CRYPTO_DEV_FSL_CAAM_PKC_API 
    scripts/config -e CRASH_CORE 
    scripts/config -e ACPI_PCC 
    scripts/config -e LOGO 
    scripts/config -e RCAR_DMAC 
    scripts/config -e I2C_QUP 
    scripts/config -m MHI_BUS 
    scripts/config -e ACPI_HOTPLUG_CPU 
    scripts/config -e RESET_NPCM 
    scripts/config -e GPIO_XGENE 
    scripts/config -e FW_LOADER_SYSFS 
    scripts/config -e ACPI_GTDT 
    scripts/config -e RD_XZ 
    scripts/config -e CPU_FREQ_DEFAULT_GOV_SCHEDUTIL 
    scripts/config -e PCI 
    scripts/config -e GPIO_VISCONTI 
    scripts/config -e VFIO 
    scripts/config -m CRYPTO_DEV_HISI_SEC2 
    scripts/config -e SERIAL_AMBA_PL011 
    scripts/config -e MTD_NAND_CORE 
    scripts/config -e PCI_LABEL 
    scripts/config -e SPRD_TIMER 
    scripts/config -e REGULATOR_MT6359 
    scripts/config -e MFD_HI6421_PMIC 
    scripts/config -e HAVE_KVM_EVENTFD 
    scripts/config -e IRQ_POLL 
    scripts/config -e VGA_ARB 
    scripts/config -e INIT_STACK_ALL_ZERO 
    scripts/config -e MV_XOR 
    scripts/config -e ARCH_R8A77995 
    scripts/config -e REGULATOR_PWM 
    scripts/config -m CRYPTO_DEV_FSL_CAAM_AHASH_API_DESC 
    scripts/config -e ARM_GIC_V2M 
    scripts/config -e MFD_SEC_CORE 
    scripts/config -m RTC_DRV_PCF85063 
    scripts/config -e TI_MESSAGE_MANAGER 
    scripts/config -e I2C_RK3X 
    scripts/config -m FPGA_BRIDGE 
    scripts/config -e PCIEASPM 
    scripts/config -e MTD_PHYSMAP 
    scripts/config -m REGMAP_SLIMBUS 
    scripts/config -e SM_DISPCC_8250 
    scripts/config -e SPI_FSL_LPSPI 
    scripts/config -e TIMER_IMX_SYS_CTR 
    scripts/config -e MFD_CROS_EC_DEV 
    scripts/config -m PCI_EPF_TEST 
    scripts/config -e REGMAP_SPI 
    scripts/config -e QUOTA 
    scripts/config -e HUGETLB_PAGE_OPTIMIZE_VMEMMAP 
    scripts/config -m PHY_MIXEL_MIPI_DPHY 
    scripts/config -e SERIO_LIBPS2 
    scripts/config -m TYPEC_TCPM 
    scripts/config -e GPIO_GENERIC_PLATFORM 
    scripts/config -e HUGETLB_PAGE 
    scripts/config -e LS_SCFG_MSI 
    scripts/config -m GNSS 
    scripts/config -e GPIOLIB_IRQCHIP 
    scripts/config -e MDIO_BITBANG 
    scripts/config -e SQUASHFS_FILE_CACHE 
    scripts/config -e AHCI_MVEBU 
    scripts/config -e ARCH_LG1K 
    scripts/config -e ARCH_ENABLE_THP_MIGRATION 
    scripts/config -m RTC_DRV_PM8XXX 
    scripts/config -e KALLSYMS_ALL 
    scripts/config -e SM_GCC_8250 
    scripts/config -e PHY_HISTB_COMBPHY 
    scripts/config -e AHCI_CEVA 
    scripts/config -e GPIO_MAX732X 
    scripts/config -e RTC_DRV_DS3232 
    scripts/config -e FSL_XGMAC_MDIO 
    scripts/config -e SERIAL_IMX_EARLYCON 
    scripts/config -e ARM64_AMU_EXTN 
    scripts/config -e TI_K3_PSIL 
    scripts/config  --set-str NFS_V4_1_IMPLEMENTATION_ID_DOMAIN "kernel.org"
    scripts/config -m QRTR_TUN 
    scripts/config -e EFI_CAPSULE_LOADER 
    scripts/config -m RTC_DRV_HYM8563 
    scripts/config -e MTD_SPI_NOR_USE_4K_SECTORS 
    scripts/config -e ARM_GIC_V3_ITS_FSL_MC 
    scripts/config -m DWMAC_ROCKCHIP 
    scripts/config -e MFD_RK808 
    scripts/config -e PCI_XGENE 
    scripts/config -e ARM64_PTR_AUTH_KERNEL 
    scripts/config -e HOTPLUG_PCI_ACPI 
    scripts/config -e ARCH_TESLA_FSD 
    scripts/config -e IMX2_WDT 
    scripts/config -e NPCM7XX_TIMER 
    scripts/config -m SPI_DESIGNWARE 
    scripts/config -e ARM_SMCCC_SOC_ID 
    scripts/config -e ARCH_NPCM 
    scripts/config -m GNSS_SERIAL 
    scripts/config -e HIBERNATION 
    scripts/config -e ARM_SMMU_V3 
    scripts/config -e HAVE_KVM_ARCH_TLB_FLUSH_ALL 
    scripts/config -e TRANSPARENT_HUGEPAGE 
    scripts/config -m PCIE_ROCKCHIP_HOST 
    scripts/config -e ARCH_R8A774E1 
    scripts/config -e PCI_LAYERSCAPE 
    scripts/config -e PHY_TI_GMII_SEL 
    scripts/config -e PCIE_KIRIN 
    scripts/config -e DVB_DYNAMIC_MINORS 
    scripts/config -e MFD_SIMPLE_MFD_I2C 
    scripts/config -e SPI_NXP_FLEXSPI 
    scripts/config -e MDIO_BUS 
    scripts/config -e DP83867_PHY 
    scripts/config -e MTK_SCPSYS_PM_DOMAINS 
    scripts/config -e GPIO_DAVINCI 
    scripts/config -e TI_SCI_INTA_MSI_DOMAIN 
    scripts/config -e CGROUP_HUGETLB 
    scripts/config -e ARCH_R8A779G0 
    scripts/config -e ARM64_PAN 
    scripts/config -e I2C_MUX_PCA954x 
    scripts/config -m FPGA_REGION 
    scripts/config -e SDM_GCC_845 
    scripts/config -e MFD_SPMI_PMIC 
    scripts/config -e REGULATOR_UNIPHIER 
    scripts/config -e SCSI_SAS_LIBSAS 
    scripts/config -e PCIE_RCAR_EP 
    scripts/config -e LOCKD_V4 
    scripts/config -e ARCH_S32 
    scripts/config -e VHOST_MENU 
    scripts/config -e ROCKCHIP_IOMMU 
    scripts/config -e PCIE_ARMADA_8K 
    scripts/config -e I2C_IMX 
    scripts/config -e PSTORE 
    scripts/config -e MDIO_CAVIUM 
    scripts/config -e IRQ_UNIPHIER_AIDET 
    scripts/config -e SERIAL_8250_PCI 
    scripts/config -e RPMSG 
    scripts/config -e NEED_PER_CPU_PAGE_FIRST_CHUNK 
    scripts/config -e VIRTIO_PCI 
    scripts/config -e EFI_VARS_PSTORE 
    scripts/config -e SCSI_SAS_ATTRS 
    scripts/config -e FSL_IFC 
    scripts/config -e CROS_EC_SENSORHUB 
    scripts/config -e MTD_MAP_BANK_WIDTH_2 
    scripts/config -e DW_APB_ICTL 
    scripts/config -e RESET_IMX7 
    scripts/config -e SERIAL_SH_SCI_CONSOLE 
    scripts/config -m CRYPTO_DEV_FSL_CAAM_CRYPTO_API_DESC 
    scripts/config -e IGB_HWMON 
    scripts/config -e SOC_IMX8M 
    scripts/config -e ARCH_R8A774B1 
    scripts/config -e ARM64_ERRATUM_1165522 
    scripts/config -e SYSFB 
    scripts/config -e PROC_PID_CPUSET 
    scripts/config -e SPI_ARMADA_3700 
    scripts/config -e ARM64_ERRATUM_1024718 
    scripts/config -e SCHED_SMT 
    scripts/config --set-val SERIAL_SH_SCI_NR_UARTS 18
    scripts/config -e VIRTIO_BLK 
    scripts/config -m WLCORE_SDIO 
    scripts/config -e QUOTACTL 
    scripts/config -m B53 
    scripts/config -e PCI_BRIDGE_EMUL 
    scripts/config -e IGBVF 
    scripts/config -e ACPI_APEI_MEMORY_FAILURE 
    scripts/config -e PCI_IMX6 
    scripts/config -e ACPI_MDIO 
    scripts/config -e CRC7 
    scripts/config -e HVC_DRIVER 
    scripts/config -e HISILICON_ERRATUM_161010101 
    scripts/config -e HWSPINLOCK 
    scripts/config -m PWM_VISCONTI 
    scripts/config -e MTD_CFI 
    scripts/config -e ALPINE_MSI 
    scripts/config -e PHY_MVEBU_A3700_UTMI 
    scripts/config -e ARM_PMU_ACPI 
    scripts/config -e OPTEE 
    scripts/config -e NFS_FS 
    scripts/config -e HOTPLUG_PCI 
    scripts/config -e MVEBU_ICU 
    scripts/config -e ATA_SFF 
    scripts/config -m MARVELL_10G_PHY 
    scripts/config -e SERIAL_SH_SCI 
    scripts/config -e TI_SCI_PROTOCOL 
    scripts/config -e FIXED_PHY 
    scripts/config -e ARCH_ENABLE_HUGEPAGE_MIGRATION 
    scripts/config -e AUXILIARY_BUS 
    scripts/config -e ARCH_R9A07G054 
    scripts/config -e ARM_SCMI_TRANSPORT_SMC 
    scripts/config -e ATA_VERBOSE_ERROR 
    scripts/config -e OWL_DMA 
    scripts/config -e NFS_V4 
    scripts/config -e PHY_MVEBU_A3700_COMPHY 
    scripts/config -e SL28CPLD_INTC 
    scripts/config -m NVMEM_LAYERSCAPE_SFP 
    scripts/config -e ARCH_MVEBU 
    scripts/config -e SERIAL_8250_PERICOM 
    scripts/config -e ROCKCHIP_GRF 
    scripts/config -e GPIO_MXC 
    scripts/config -e HIBERNATION_SNAPSHOT_DEV 
    scripts/config -e OF_DYNAMIC 
    scripts/config -e HID_CYPRESS 
    scripts/config -m RTC_DRV_MT6397 
    scripts/config -e SUN50I_H6_CCU 
    scripts/config -e INTERCONNECT 
    scripts/config --set-val LEGACY_PTY_COUNT 16
    scripts/config -e DIMLIB 
    scripts/config -m SPI_IMX 
    scripts/config -e ARCH_BERLIN 
    scripts/config -m CRYPTO_DEV_HISI_ZIP 
    scripts/config -e DECOMPRESS_XZ 
    scripts/config -e SERIAL_XILINX_PS_UART_CONSOLE 
    scripts/config -e ARM_SMC_WATCHDOG 
    scripts/config -e SDM_GPUCC_845 
    scripts/config -e MQ_IOSCHED_DEADLINE 
    scripts/config -e MDIO_DEVICE 
    scripts/config -e MDIO_DEVRES 
    scripts/config -e BPF_UNPRIV_DEFAULT_OFF 
    scripts/config -e TCG_TIS_I2C_INFINEON 
    scripts/config -m DWMAC_SUNXI 
    scripts/config -e I2C_OMAP 
    scripts/config -e HID_MONTEREY 
    scripts/config -e DW_APB_TIMER_OF 
    scripts/config -e ARM_SCMI_TRANSPORT_OPTEE 
    scripts/config -m HW_RANDOM 
    scripts/config -e AQUANTIA_PHY 
    scripts/config --set-val PSTORE_DEFAULT_KMSG_BYTES 10240
    scripts/config -e MTK_EFUSE 
    scripts/config -e PAGE_REPORTING 
    scripts/config -e PCS_LYNX 
    scripts/config -e HID_ITE 
    scripts/config -m V4L2_H264 
    scripts/config -e TEE 
    scripts/config -e PCC 
    scripts/config -e ACPI_PPTT 
    scripts/config -e RD_ZSTD 
    scripts/config -e ACPI_HED 
    scripts/config -e REGULATOR_MT6358 
    scripts/config -e SERIAL_8250_MT6577 
    scripts/config -e SATA_AHCI 
    scripts/config -e PREEMPT_COUNT 
    scripts/config -e ARM64_VA_BITS_48 
    scripts/config -e SOCIONEXT_SYNQUACER_PREITS 
    scripts/config -e MTD_RAW_NAND 
    scripts/config -e PCIE_VISCONTI_HOST 
    scripts/config -e MEGARAID_SAS 
    scripts/config -e ARCH_R8A774A1 
    scripts/config -e HISILICON_ERRATUM_161600802 
    scripts/config -e CROS_EC 
    scripts/config -e MTD_SPI_NOR 
    scripts/config -m STMMAC_PLATFORM 
    scripts/config -e ARM_MHU 
    scripts/config -m INTERCONNECT_IMX8MN 
    scripts/config -e KVM_MMIO 
    scripts/config -e NF_CT_PROTO_DCCP 
    scripts/config -e QORIQ_CPUFREQ 
    scripts/config -e SERIAL_IMX_CONSOLE 
    scripts/config -m CRYPTO_DEV_FSL_DPAA2_CAAM 
    scripts/config -e OWL_TIMER 
    scripts/config -m IIO_ST_LSM6DSX_I2C 
    scripts/config -m CRYPTO_DEV_FSL_CAAM 
    scripts/config -e MTD_NAND_FSL_IFC 
    scripts/config -m MACVTAP 
    scripts/config -e VFIO_PCI 
    scripts/config -e BLK_DEV_INTEGRITY 
    scripts/config -e ARM_ARMADA_37XX_CPUFREQ 
    scripts/config -m CRYPTO_DEV_FSL_CAAM_JR 
    scripts/config -e KVM_VFIO 
    scripts/config -m SLIMBUS 
    scripts/config -e ARCH_ACTIONS 
    scripts/config -m EXTCON_PTN5150 
    scripts/config -e I2C_S3C2410 
    scripts/config -e VITESSE_PHY 
    scripts/config -e MTD_SST25L 
    scripts/config -m SPI_RSPI 
    scripts/config -e EXCLUSIVE_SYSTEM_RAM 
    scripts/config -e PHY_MTK_TPHY 
    scripts/config -e ATA_ACPI 
    scripts/config -e TCG_TPM 
    scripts/config -m GNSS_MTK_SERIAL 
    scripts/config -e SATA_RCAR 
    scripts/config -e REGULATOR_S2MPS11 
    scripts/config -e GENERIC_ARCH_NUMA 
    scripts/config -e TRANSPARENT_HUGEPAGE_ALWAYS 
    scripts/config -e KVM 
    scripts/config -e GPIO_ACPI 
    scripts/config -e WILINK_PLATFORM_DATA 
    scripts/config -e DW_WATCHDOG 
    scripts/config -e ROCKCHIP_PHY 
    scripts/config -e REGMAP_SPMI 
    scripts/config -e RC_DEVICES 
    scripts/config -e PCI_HISI 
    scripts/config -e ARM64_HW_AFDBM 
    scripts/config -e HNS_DSAF 
    scripts/config -e MTK_PMIC_WRAP 
    scripts/config -e REGULATOR_PF8X00 
    scripts/config -e I2C_OWL 
    scripts/config -m CROS_EC_CHARDEV 
    scripts/config -e ARCH_SYNQUACER 
    scripts/config -e HAVE_ACPI_APEI 
    scripts/config -e ZYNQMP_POWER 
    scripts/config -e SPI 
    scripts/config -e HID_CHICONY 
    scripts/config -e GUEST_PERF_EVENTS 
    scripts/config -m CRYPTO_DEV_HISI_HPRE 
    scripts/config -e LOCKD 
    scripts/config -e PCI_DOMAINS_GENERIC 
    scripts/config -e FB_MX3 
    scripts/config -e MFD_VEXPRESS_SYSREG 
    scripts/config -e CROS_EC_PROTO 
    scripts/config -e PHY_UNIPHIER_AHCI 
    scripts/config -e ARCH_ROCKCHIP 
    scripts/config -e MVEBU_GICP 
    scripts/config -e MULTIPLEXER 
    scripts/config -e GPIO_DWAPB 
    scripts/config -e DEVPORT 
    scripts/config -e HIX5HD2_GMAC 
    scripts/config -e NFS_V4_SECURITY_LABEL 
    scripts/config -e SC_GCC_8280XP 
    scripts/config -e PROC_VMCORE 
    scripts/config -e ARM64_ERRATUM_1530923 
    scripts/config -e SOC_BUS 
    scripts/config -e HID_BELKIN 
    scripts/config -e SERIAL_8250_PNP 
    scripts/config -e ARM_SCMI_PROTOCOL 
    scripts/config -e CRYPTO_DEV_FSL_CAAM_RNG_API 
    scripts/config -e IMX_SCU_PD 
    scripts/config -e DMA_ACPI 
    scripts/config -e HI6220_MBOX 
    scripts/config -e SPI_ROCKCHIP 
    scripts/config -e HID_EZKEY 
    scripts/config -e SPI_QUP 
    scripts/config -e I2C_UNIPHIER_F 
    scripts/config -e ARM64_EPAN 
    scripts/config -e MFD_SL28CPLD 
    scripts/config -e ARM_SMMU_DISABLE_BYPASS_BY_DEFAULT 
    scripts/config -e PCIE_ALTERA_MSI 
    scripts/config -e DECOMPRESS_LZMA 
    scripts/config -e AHCI_XGENE 
    scripts/config -e RESET_UNIPHIER_GLUE 
    scripts/config -e SUN50I_H6_R_CCU 
    scripts/config -e REGULATOR_HI6421V530 
    scripts/config -e AT803X_PHY 
    scripts/config -e MDIO_BUS_MUX_MULTIPLEXER 
    scripts/config -e CAVIUM_ERRATUM_23144 
    scripts/config -e SM_GPUCC_8150 
    scripts/config -m ARM_ALLWINNER_SUN50I_CPUFREQ_NVMEM 
    scripts/config -e MST_IRQ 
    scripts/config -e ARCH_HAS_SUBPAGE_FAULTS 
    scripts/config -e ARM_SMMU 
    scripts/config -e ARCH_USES_HIGH_VMA_FLAGS 
    scripts/config -m EEPROM_AT24 
    scripts/config -e PREEMPT_RCU 
    scripts/config -m PCS_XPCS 
    scripts/config -m ACPI_CPPC_CPUFREQ 
    scripts/config -e ARM_SCMI_HAVE_TRANSPORT 
    scripts/config -e SATA_AHCI_PLATFORM 
    scripts/config -e SYS_SUPPORTS_SH_CMT 
    scripts/config -e SMC91X 
    scripts/config -e TI_SCI_INTR_IRQCHIP 
    scripts/config -e PCIE_MOBIVEIL 
    scripts/config -e ARM_GIC_V3_ITS_PCI 
    scripts/config -e NEED_PER_CPU_EMBED_FIRST_CHUNK 
    scripts/config --set-val SCSI_MPT3SAS_MAX_SGE 128
    scripts/config -e ROCKCHIP_IODOMAIN 
    scripts/config -e ROCKCHIP_DW_HDMI 
    scripts/config -m I2C_HID_CORE 
    scripts/config -e RTC_INTF_PROC 
    scripts/config -m EEPROM_AT25 
    scripts/config -e SATA_PMP 
    scripts/config -e PRINT_QUOTA_WARNING 
    scripts/config -e IMX_SCU 
    scripts/config -e ZYNQMP_IPI_MBOX 
    scripts/config -e CAVIUM_ERRATUM_30115 
    scripts/config -e SERIAL_XILINX_PS_UART 
    scripts/config -m UACCE 
    scripts/config -e PCI_XGENE_MSI 
    scripts/config -e ARM_GIC_PM 
    scripts/config -e INDIRECT_PIO 
    scripts/config -e I2C_DESIGNWARE_CORE 
    scripts/config -e ARM64_RAS_EXTN 
    scripts/config -e GPIO_MVEBU 
    scripts/config -e ARCH_R8A77965 
    scripts/config -e CAVIUM_ERRATUM_27456 
    scripts/config -e ACPI_APEI 
    scripts/config -e CRYPTO_DEV_FSL_CAAM_AHASH_API 
    scripts/config -e MACB_USE_HWSTAMP 
    scripts/config -e ARM64_ERRATUM_832075 
    scripts/config -e SERIAL_AMBA_PL011_CONSOLE 
    scripts/config -e FEC 
    scripts/config -e ACPI_AC 
    scripts/config -e MDIO_BUS_MUX 
    scripts/config -e ARCH_R8A77961 
    scripts/config -e IMX_GPCV2 
    scripts/config -e PCI_ENDPOINT 
    scripts/config -e SH_TIMER_CMT 
    scripts/config -e SMSC911X 
    scripts/config -e HISI_PMU 
    scripts/config -e PSTORE_DEFLATE_COMPRESS 
    scripts/config -e SERIAL_8250_EM 
    scripts/config -e VIRTIO_PCI_LEGACY 
    scripts/config -e PSTORE_DEFLATE_COMPRESS_DEFAULT 
    scripts/config -e SKY2 
    scripts/config -e K3_DMA 
    scripts/config -e IRQ_TIME_ACCOUNTING 
    scripts/config -m I2C_HID_OF 
    scripts/config -e PTP_1588_CLOCK_DTE 
    scripts/config -e ACPI_PRMT 
    scripts/config -m CRYPTO_DEV_HISI_QM 
    scripts/config -e CROS_EC_I2C 
    scripts/config -e SYS_SUPPORTS_SH_TMU 
    scripts/config -m OF_FPGA_REGION 
    scripts/config -e VLAN_8021Q_GVRP 
    scripts/config -e CAVIUM_ERRATUM_22375 
    scripts/config -e TI_DAVINCI_MDIO 
    scripts/config -e VIRTIO_CONSOLE 
    scripts/config -e SM_GCC_8450 
    scripts/config -e BLK_DEV_BSGLIB 
    scripts/config -m PHY_J721E_WIZ 
    scripts/config -m WCN36XX 
    scripts/config -e SM_GCC_8350 
    scripts/config -e ARCH_SEATTLE 
    scripts/config -e MICROSEMI_PHY 
    scripts/config -e LEGACY_PTYS 
    scripts/config -e FSL_MC_BUS 
    scripts/config -e CROS_EC_SPI 
    scripts/config -e SUN8I_H3_CCU 
    scripts/config -e SCSI_UFSHCD 
    scripts/config -e MTD_BLKDEVS 
    scripts/config -e DMA_ENGINE_RAID 
    scripts/config -e ARCH_ALPINE 
    scripts/config -m DWMAC_GENERIC 
    scripts/config -m HW_RANDOM_OPTEE 
    scripts/config -m PHY_ROCKCHIP_PCIE 
    scripts/config -m PCI_ENDPOINT_TEST 
    scripts/config -e ARM64_SVE 
    scripts/config -e MTD_CFI_UTIL 
    scripts/config -e REGULATOR_PFUZE100 
    scripts/config -e PCIE_DW 
    scripts/config -m TYPEC_TPS6598X 
    scripts/config -e ROCKCHIP_CDN_DP 
    scripts/config -e MVEBU_SEI 
    scripts/config -e RTC_DRV_DS3232_HWMON 
    scripts/config -e CRC64 
    scripts/config -e SERIAL_8250_EXTENDED 
    scripts/config -e ARCH_HAS_ACPI_TABLE_UPGRADE 
    scripts/config -e MVEBU_ODMI 
    scripts/config -m GPIO_ALTERA 
    scripts/config -e SCSI_LOWLEVEL 
    scripts/config -e MFD_AXP20X_I2C 
    scripts/config -e SECURITYFS 
    scripts/config -e PCI_DOMAINS 
    scripts/config -e RANDOMIZE_MODULE_REGION_FULL 
    scripts/config -e FB_MODE_HELPERS 
    scripts/config -e ARM_SP805_WATCHDOG 
    scripts/config -m QRTR_SMD 
    scripts/config -e NFS_V4_2_SSC_HELPER 
    scripts/config -e RESET_HISI 
    scripts/config -e ARM64_USE_LSE_ATOMICS 
    scripts/config -e SCSI_UFSHCD_PLATFORM 
    scripts/config -e EXT3_FS 
    scripts/config -e PCIEASPM_DEFAULT 
    scripts/config -m RC_MAP 
    scripts/config -m DWMAC_VISCONTI 
    scripts/config -e HISILICON_LPC 
    scripts/config -e HNS3 
    scripts/config -e ARM64_WORKAROUND_SPECULATIVE_AT 
    scripts/config -e HAVE_KVM_IRQFD 
    scripts/config -m IIO_ST_LSM6DSX 
    scripts/config -m RZG2L_ADC 
    scripts/config -e SNI_AVE 
    scripts/config -e I2C_MT65XX 
    scripts/config -e REGULATOR_RK808 
    scripts/config -e MFD_BD9571MWV 
    scripts/config -m DVB_CORE 
    scripts/config -e TI_K3_UDMA_GLUE_LAYER 
    scripts/config -e SERIAL_FSL_LPUART_CONSOLE 
    scripts/config -e VEXPRESS_CONFIG 
    scripts/config -m TI_ADS1015 
    scripts/config -m PHY_ROCKCHIP_INNO_DSIDPHY 
    scripts/config -e SCSI_SAS_ATA 
    scripts/config -m MWIFIEX_PCIE 
    scripts/config -e INTEGRITY 
    scripts/config -e HUGETLBFS 
    scripts/config -e I2C_IMX_LPI2C 
    scripts/config -m PNFS_BLOCK 
    scripts/config -m FPGA_MGR_STRATIX10_SOC 
    scripts/config -e CRYPTO_DEV_FSL_CAAM_CRYPTO_API 
    scripts/config -e HID_REDRAGON 
    scripts/config -e ARCH_XGENE 
    scripts/config -e MTD_NAND_MARVELL 
    scripts/config -e SPI_S3C64XX 
    scripts/config -m RTC_DRV_M41T80 
    scripts/config -e HNS 
    scripts/config -m IIO_CROS_EC_LIGHT_PROX 
    scripts/config -m SYSTEMPORT 
    scripts/config --set-val NODES_SHIFT 4
    scripts/config -e ROCKCHIP_ANALOGIX_DP 
    scripts/config -m TAP 
    scripts/config -m DWMAC_IMX8 
    scripts/config -e RTC_DRV_MAX77686 
    scripts/config -m RTC_DRV_IMX_SC 
    scripts/config -e BLK_MQ_PCI 
    scripts/config -e LOGO_LINUX_CLUT224 
    scripts/config -e PCIE_IPROC_MSI 
    scripts/config -m PWM_RENESAS_TPU 
    scripts/config -e CROS_EC_LIGHTBAR 
    scripts/config -m RTC_DRV_SNVS 
    scripts/config -m GARP 
    scripts/config -e ARCH_VISCONTI 
    scripts/config -e SERIAL_8250_DEPRECATED_OPTIONS 
    scripts/config -m VCNL4000 
    scripts/config -e PCIE_ROCKCHIP 
    scripts/config -e OMAP_DM_TIMER 
    scripts/config -e HNS3_HCLGE 
    scripts/config -e BLK_DEV_INTEGRITY_T10 
    scripts/config -e ACPI_IORT 
    scripts/config -e HID_KENSINGTON 
    scripts/config -e MTD_DATAFLASH 
    scripts/config -e ROCKCHIP_INNO_HDMI 
    scripts/config -e PCIEAER 
    scripts/config -e ARCH_R9A07G044 
    scripts/config -e FAILOVER 
    scripts/config -e SC_GCC_7180 
    scripts/config -m TYPEC_TCPCI 
    scripts/config -e SATA_HOST 
    scripts/config -e FSL_DPAA2_PTP_CLOCK 
    scripts/config -e UNIPHIER_WATCHDOG 
    scripts/config -m MFD_WCD934X 
    scripts/config -e VIRTIO_MENU 
    scripts/config -e IMX_IRQSTEER 
    scripts/config -m SL28CPLD_WATCHDOG 
    scripts/config -m BLK_DEV_NVME 
    scripts/config -m MRP 
    scripts/config -e ARCH_RCAR_GEN3 
    scripts/config -e HAS_IOPORT_MAP 
    scripts/config -m IR_SUNXI 
    scripts/config -e TI_SCI_INTA_IRQCHIP 
    scripts/config -e HI3660_MBOX 
    scripts/config -e ACPI_CCA_REQUIRED 
    scripts/config -e ARM64_LSE_ATOMICS 
    scripts/config -e ARCH_K3 
    scripts/config -m MDIO 
    scripts/config -e ARCH_R9A09G011 
    scripts/config -e PTP_1588_CLOCK_QORIQ 
    scripts/config -e PHY_FSL_IMX8M_PCIE 
    scripts/config -m SCSI_MPT3SAS 
    scripts/config -e DPAA_ERRATUM_A050385 
    scripts/config -e PCI_IOV 
    scripts/config -e ARM_TIMER_SP804 
    scripts/config -e TASKS_RCU 
    scripts/config -e ARCH_R8A77980 
    scripts/config -e MTD_PHYSMAP_OF 
    scripts/config -m SMSC_PHY 
    scripts/config -e IOMMU_IO_PGTABLE_ARMV7S 
    scripts/config -m MTK_DEVAPC 
    scripts/config -e ARCH_RENESAS 
    scripts/config -e DMA_PERNUMA_CMA 
    scripts/config -m HW_RANDOM_HISI 
    scripts/config -e MTD_NAND_ECC_SW_HAMMING 
    scripts/config -e SERIAL_OWL_CONSOLE 
    scripts/config -e PAGE_POOL_STATS 
    scripts/config -e ARM_SBSA_WATCHDOG 
    scripts/config -e GPIO_RCAR 
    scripts/config -e RTC_DRV_EFI 
    scripts/config -e PNFS_FLEXFILE_LAYOUT 
    scripts/config -e ARM64_E0PD 
    scripts/config -e USE_PERCPU_NUMA_NODE_ID 
    scripts/config -e I2C_RIIC 
    scripts/config -m HW_RANDOM_CN10K 
    scripts/config -e PCIE_PME 
    scripts/config -e I2C_SLAVE 
    scripts/config -m SPI_DW_MMIO 
    scripts/config -e VFIO_PCI_CORE 
    scripts/config -e MTK_MMSYS 
    scripts/config -m GPIO_BD9571MWV 
    scripts/config -m CROS_EC_TYPEC 
    scripts/config -e TI_K3_SOCINFO 
    scripts/config -e EFI_CUSTOM_SSDT_OVERLAYS 
    scripts/config -e BLK_DEV_BSG 
    scripts/config -e PWM_ROCKCHIP 
    scripts/config -e KVM_XFER_TO_GUEST_WORK 
    scripts/config -e CROS_EC_SYSFS 
    scripts/config -e PNP 
    scripts/config -e I2C_SMBUS 
    scripts/config -e GPIO_PL061 
    scripts/config -m GPIO_REGMAP 
    scripts/config -e I2C_SH_MOBILE 
    scripts/config -e MTD_CFI_NOSWAP 
    scripts/config -m FPGA_MGR_ALTERA_CVP 
    scripts/config -m RTC_DRV_DS1307 
    scripts/config -e HAVE_KVM_IRQ_ROUTING 
    scripts/config -e NF_CONNTRACK_EVENTS 
    scripts/config -e SPMI 
    scripts/config -e PCIEPORTBUS 
    scripts/config -e SCSI_HISI_SAS 
    scripts/config -e MTD_NAND_DENALI_DT 
    scripts/config -e ACPI_CPPC_LIB 
    scripts/config -e ACPI_APEI_GHES 
    scripts/config -m ARM_IMX_BUS_DEVFREQ 
    scripts/config -e IPQ_GCC_6018 
    scripts/config -e RUNTIME_TESTING_MENU 
    scripts/config -e ZYNQMP_FIRMWARE 
    scripts/config -e SOC_RENESAS 
    scripts/config -e SUNRPC_BACKCHANNEL 
    scripts/config -m HW_RANDOM_ARM_SMCCC_TRNG 
    scripts/config -m RC_CORE 
    scripts/config -e MICREL_PHY 
    scripts/config -e PPS 
    scripts/config -e NVMEM_IMX_OCOTP_SCU 
    scripts/config -e ARCH_VEXPRESS 
    scripts/config -e TI_K3_RINGACC 
    scripts/config -m IMX_SC_WDT 
    scripts/config -m V4L2_VP9 
    scripts/config -e MEMORY 
    scripts/config -e SPI_FSL_QUADSPI 
    scripts/config -m SPI_SH_MSIOF 
    scripts/config -e REGULATOR_BD9571MWV 
    scripts/config -e MTK_SMI 
    scripts/config -m IIO_ST_LSM6DSX_SPI 
    scripts/config -e HAVE_SETUP_PER_CPU_AREA 
    scripts/config -e ROCKCHIP_TIMER 
    scripts/config -e SERIAL_SH_SCI_DMA 
    scripts/config -m DWMAC_SUN8I 
    scripts/config -e PCI_ECAM 
    scripts/config -e SCSI_UFS_HISI 
    scripts/config -m SPI_SPIDEV 
    scripts/config -e RESET_SCMI 
    scripts/config -e TRANS_TABLE 
    scripts/config -m MWIFIEX_SDIO 
    scripts/config -m ARM_IMX_CPUFREQ_DT 
    scripts/config -e GPIO_MB86S7X 
    scripts/config -e ARCH_R8A779F0 
    scripts/config -m ARM_SMMU_V3_PMU 
    scripts/config -m PHY_CADENCE_TORRENT 
    scripts/config -m IPMI_HANDLER 
    scripts/config -e ARM64_ERRATUM_2051678 
    scripts/config -m MPL3115 
    scripts/config -e ZYNQMP_PM_DOMAINS 
    scripts/config -e HID_A4TECH 
    scripts/config -e CRC64_ROCKSOFT 
    scripts/config -m GPIO_SL28CPLD 
    scripts/config  --set-str PM_STD_PARTITION ""
    scripts/config -e MTD 
    scripts/config -e ARM_SCMI_HAVE_MSG 
    scripts/config -e SERIAL_8250_EXAR 
    scripts/config -e MFD_MT6360 
    scripts/config -e SPI_ORION 
    scripts/config -e ACPI_MCFG 
    scripts/config -e KVM_GENERIC_DIRTYLOG_READ_PROTECT 
    scripts/config -e ARM64_ERRATUM_1418040 
    scripts/config -e ARM_SCMI_CPUFREQ 
    scripts/config -e PCI_QUIRKS 
    scripts/config -e FSL_GUTS 
    scripts/config -e IMX_INTMUX 
    scripts/config -m IMX_SDMA 
    scripts/config -e SERIAL_FSL_LINFLEXUART 
    scripts/config -e REGULATOR_BD718XX 
    scripts/config -e PCI_AARDVARK 
    scripts/config -e RZ_DMAC 
    scripts/config -e ROCKCHIP_EFUSE 
    scripts/config -e MTD_BLOCK 
    scripts/config -e RST_RCAR 
    scripts/config -e PHY_MVEBU_CP110_COMPHY 
    scripts/config -m PWM_MTK_DISP 
    scripts/config -m DM_ZERO 
    scripts/config -e MTD_NAND_ECC 
    scripts/config -e SPI_CADENCE_QUADSPI 
    scripts/config -e MFD_HI655X_PMIC 
    scripts/config -m RENESAS_RPCIF 
    scripts/config -e VIRTIO_PCI_LIB_LEGACY 
    scripts/config -e CAVIUM_TX2_ERRATUM_219 
    scripts/config -e HAVE_KVM_IRQ_BYPASS 
    scripts/config -e MFD_ROHM_BD718XX 
    scripts/config -e SPI_FSL_DSPI 
    scripts/config -m RTC_DRV_RK808 
    scripts/config -e FPGA 
    scripts/config -e ARM64_ERRATUM_1542419 
    scripts/config -e SPI_SUN6I 
    scripts/config -e MFD_ALTERA_SYSMGR 
    scripts/config -e HNS_MDIO 
    scripts/config -m DWMAC_SOCFPGA 
    scripts/config -e SERIO 
    scripts/config -e HID_CHERRY 
    scripts/config -m DWMAC_IPQ806X 
    scripts/config -m DM_MIRROR 
    scripts/config -m HW_RANDOM_OMAP 
    scripts/config -m PHY_MTK_MIPI_DSI 
    scripts/config -e ACPI 
    scripts/config  --set-str PSTORE_COMPRESS_DEFAULT "deflate"
    scripts/config -e ROOT_NFS 
    scripts/config -e RENESAS_OSTM 
    scripts/config -e BNX2X_SRIOV 
    scripts/config -e MTK_SCPSYS 
    scripts/config -e CRYPTO_DEV_FSL_CAAM_CRYPTO_API_QI 
    scripts/config -e ARCH_R8A77951 
    scripts/config -e EXT2_FS 
    scripts/config -e SERIAL_FSL_LINFLEXUART_CONSOLE 
    scripts/config -e MDIO_BUS_MUX_MMIOREG 
    scripts/config -e STACKPROTECTOR 
    scripts/config -e KEXEC 
    scripts/config -e FWNODE_MDIO 
    scripts/config -e MUX_MMIO 
    scripts/config -e PRINTK_TIME 
    scripts/config -m VLAN_8021Q 
    scripts/config -e SPI_PL022 
    scripts/config -e ARM64_PTR_AUTH 
    scripts/config -m ATL1C 
    scripts/config -e MMU_NOTIFIER 
    scripts/config -e FSL_EDMA 
    scripts/config -e SDR_PLATFORM_DRIVERS 
    scripts/config -e ACPI_GENERIC_GSI 
    scripts/config -e IPMI_PLAT_DATA 
    scripts/config -e CRYPTO_DEV_FSL_CAAM_PRNG_API 
    scripts/config -e PHY_ROCKCHIP_TYPEC 
    scripts/config -e SPI_DW_DMA 
    scripts/config -e NVMEM_IMX_OCOTP 
    scripts/config -e DNS_RESOLVER 
    scripts/config -e GPIO_ROCKCHIP 
    scripts/config -e RTC_DRV_XGENE 
    scripts/config -e BGMAC_PLATFORM 
    scripts/config -e VIRTIO_PCI_LIB 
    scripts/config -e VIRTIO 
    scripts/config -e EINT_MTK 
    scripts/config -e OF_MDIO 
    scripts/config -m AX88796B_PHY 
    scripts/config -m IPMI_SI 
    scripts/config -e ARCH_HISI 
    scripts/config -e PTP_1588_CLOCK 
    scripts/config -m IIO_ST_MAGN_SPI_3AXIS 
    scripts/config -e NFS_USE_KERNEL_DNS 
    scripts/config -e PCI_MSI 
    scripts/config -m GPIO_WCD934X 
    scripts/config -e CROS_EC_VBC 
    scripts/config -m TYPEC_HD3SS3220 
    scripts/config -e ACPI_PROCESSOR 
    scripts/config -e S3C2410_WATCHDOG 
    scripts/config -e RENESAS_WDT 
    scripts/config -e MTD_MAP_BANK_WIDTH_4 
    scripts/config -m QRTR 
    scripts/config -e REGULATOR_ROHM 
    scripts/config -e PREEMPT 
    scripts/config -m BLK_DEV_MD 
    scripts/config -e ARCH_R8A77960 
    scripts/config --set-val DVB_MAX_ADAPTERS 16
    scripts/config -e ARCH_UNIPHIER 
    scripts/config -e PCI_ATS 
    scripts/config -e I2C_CROS_EC_TUNNEL 
    scripts/config -m MWIFIEX 
    scripts/config -e NPCM7XX_WATCHDOG 
    scripts/config -e PHY_XGENE 
    scripts/config -e VFIO_PCI_MMAP 
    scripts/config -e ARM64_ERRATUM_1319367 
    scripts/config -e SCSI_HISI_SAS_PCI 
    scripts/config -e POWER_SUPPLY_HWMON 
    scripts/config -e SERIAL_OWL 
    scripts/config -e AUTOFS4_FS 
    scripts/config -e HAVE_KVM_MSI 
    scripts/config -e GPIO_XGENE_SB 
    scripts/config -m RTC_DRV_FSL_FTM_ALARM 
    scripts/config -e ACPI_BUTTON 
    scripts/config -e OWL_PM_DOMAINS 
    scripts/config -m INTERCONNECT_IMX8MQ 
    scripts/config -e RESET_TI_SCI 
    scripts/config -e UEFI_CPER 
    scripts/config -e DEV_COREDUMP 
    scripts/config -e OF_NUMA 
    scripts/config -e MTD_CFI_I2 
    scripts/config -e REMOTEPROC 
    scripts/config -e PROFILING 
    scripts/config -m RTC_DRV_PCF2127 
    scripts/config -e PL330_DMA 
    scripts/config -e SWPHY 
    scripts/config -e NFS_V2 
    scripts/config -e SERIAL_MVEBU_CONSOLE 
    scripts/config -e HIBERNATE_CALLBACKS 
    scripts/config -e MTK_TIMER 
    scripts/config -e UNIPHIER_SYSTEM_BUS 
    scripts/config -e SM_GPUCC_8250 
    scripts/config -e SPI_MASTER 
    scripts/config -e ATA 
    scripts/config -m PHY_CADENCE_SIERRA 
    scripts/config -e PCI_PASID 
    scripts/config -e REGULATOR_MT6360 
    scripts/config -e MFD_MAX77620 
    scripts/config -e TI_K3_AM65_CPSW_NUSS 
    scripts/config -e GPIO_UNIPHIER 
    scripts/config -e SC_GCC_7280 
    scripts/config -e VIRTIO_ANCHOR 
    scripts/config -e SDM_DISPCC_845 
    scripts/config -e DW_APB_TIMER 
    scripts/config -e CRYPTO_CRC64_ROCKSOFT 
    scripts/config -m INTERCONNECT_IMX8MM 
    scripts/config -e ASYNC_TX_DISABLE_XOR_VAL_DMA 
    scripts/config -e PREEMPT_BUILD 
    scripts/config -e PNFS_FILE_LAYOUT 
    scripts/config -e FB_EFI 
    scripts/config -e PCIE_HISI_STB 
    scripts/config -m MFD_WM8994 
    scripts/config -e ARM64_CNP 
    scripts/config -m I2C_CADENCE 
    scripts/config -e GPIO_ZYNQMP_MODEPIN 
    scripts/config -m REGULATOR_TPS65132 
    scripts/config -e NFS_V3 
    scripts/config -e VFIO_PCI_INTX 
    scripts/config -e MTD_MAP_BANK_WIDTH_1 
    scripts/config -e MACB 
    scripts/config -m PHY_MTK_HDMI 
    scripts/config -e MTD_OF_PARTS 
    scripts/config -e MTD_CFI_I1 
    scripts/config -e RC_DECODERS 
    scripts/config -e RAS 
    scripts/config -e FSL_FMAN 
    scripts/config -e REGULATOR_MP8859 
    scripts/config -e MTD_GEN_PROBE 
    scripts/config -e MVEBU_PIC 
    scripts/config -e PACKING 
    scripts/config -e PARAVIRT 
    scripts/config -e KEXEC_CORE 
    scripts/config -e GPIO_GENERIC 
    scripts/config -m ALTERA_FREEZE_BRIDGE 
    scripts/config -e SERIAL_8250_OMAP_TTYO_FIXUP 
    scripts/config -e ACPI_APEI_EINJ 
    scripts/config -e PCIE_DW_HOST 
    scripts/config -e ACPI_CPPC_CPUFREQ_FIE 
    scripts/config -m PHY_ROCKCHIP_INNO_HDMI 
    scripts/config --set-val SCSI_MPT2SAS_MAX_SGE 128
    scripts/config -e ACPI_TABLE_UPGRADE 
    scripts/config -e KEXEC_FILE 
    scripts/config -e HISILICON_IRQ_MBIGEN 
    scripts/config -m PHY_AM654_SERDES 
    scripts/config -e RD_LZMA 
    scripts/config -e MQ_IOSCHED_KYBER 
    scripts/config -e IRQ_BYPASS_MANAGER 
    scripts/config -e ACPI_NUMA 
    scripts/config -e PCIE_IPROC_PLATFORM 
    scripts/config -e PCI_HOST_GENERIC 
    scripts/config -e PHY_RCAR_GEN3_PCIE 
    scripts/config -m WL18XX 
    scripts/config -e ARCH_R8A77970 
    scripts/config -e NFS_DISABLE_UDP_SUPPORT 
    scripts/config -m HW_RANDOM_CAVIUM 
    scripts/config -e CRASH_DUMP 
    scripts/config -e UNIPHIER_EFUSE 
    scripts/config -e PNPACPI 
    scripts/config -e MEMORY_BALLOON 
    scripts/config -e ROCKCHIP_PM_DOMAINS 
    scripts/config -e ARCH_LAYERSCAPE 
    scripts/config -e RENESAS_DMA 
    scripts/config -e ROCKCHIP_LVDS 
    scripts/config -e SUN50I_H616_CCU 
    scripts/config -e ARM_SCMI_TRANSPORT_MAILBOX 
    scripts/config -m R8169 
    scripts/config -m PWM_RCAR 
    scripts/config -e STACKPROTECTOR_STRONG 
    scripts/config -e REGULATOR_MT6397 
    scripts/config -e PCIE_ALTERA 
    scripts/config -e LS_EXTIRQ 
    scripts/config -e ROCKCHIP_VOP 
    scripts/config -e ARM_SCMI_POWER_DOMAIN 
    scripts/config -e BALLOON_COMPACTION 
    scripts/config -e MTD_CFI_ADV_OPTIONS 
    scripts/config -e REGULATOR_HI655X 
    scripts/config -e ARM64_ERRATUM_858921 
    scripts/config -e ARCH_HIBERNATION_HEADER 
    scripts/config -m RPMSG_CHAR 
    scripts/config -e OF_RESOLVE 
    scripts/config -e ROCKCHIP_DW_MIPI_DSI 
    scripts/config -e WANT_DEV_COREDUMP 

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
- elements/boards/common/linux-megous.inc
