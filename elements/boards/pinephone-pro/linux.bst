kind: manual

sources:
- kind: git_tag
  url: github:megous/linux
  track: orange-pi-5.17

depends:
- freedesktop-sdk.bst:components/kmod.bst

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:components/bc.bst
- freedesktop-sdk.bst:components/gzip.bst

variables:
  bootdir: /boot
  kernel_arch: arm64
  image-name: arch/arm64/boot/Image

environment:
  ARCH: '%{kernel_arch}'

config:
  configure-commands:
  - |
    # Generate the default kernel config for the target architecture
    make defconfig

  - |
    # Modify the kernel config for additional features

    # Kernel Config Options
    scripts/config -e DEVTMPFS
    scripts/config -e CGROUPS
    scripts/config -e INOTIFY_USER
    scripts/config -e SIGNALFD
    scripts/config -e TIMERFD
    scripts/config -e EPOLL
    scripts/config -e NET
    scripts/config -e SYSFS
    scripts/config -e PROC_FS
    scripts/config -e FHANDLE

    # Kernel crypto/hash API
    scripts/config -e CRYPTO_USER_API_HASH
    scripts/config -e CRYPTO_HMAC
    scripts/config -e CRYPTO_SHA256

    # udev will fail to work with legacy sysfs
    scripts/config -d SYSFS_DEPRECATED

    # Boot is very slow with systemd when legacy PTYs are present
    scripts/config -d LEGACY_PTYS
    scripts/config -d LEGACY_PTY_COUNT

    # Legacy hotplug confuses udev
    scripts/config --set-str UEVENT_HELPER_PATH ""

    # Userspace firmware loading not supported
    scripts/config -d FW_LOADER_USER_HELPER

    # Some udev/virtualization requires
    scripts/config -e DMIID

    # Support for some SCSI devices serial number retrieval
    scripts/config -e BLK_DEV_BSG

    # Required for PrivateNetwork= in service units
    scripts/config -e NET_NS
    scripts/config -e USER_NS

    # Required for 9p support
    scripts/config -e NET_9P
    scripts/config -e NET_9P_VIRTIO
    scripts/config -e 9P_FS
    scripts/config -e 9P_FS_POSIX_ACL
    scripts/config -e 9P_FS_SECURITY
    scripts/config -e VIRTIO_PCI

    # Strongly Recommended
    scripts/config -e IPV6
    scripts/config -e AUTOFS4_FS
    scripts/config -e TMPFS_XATTR
    scripts/config -e TMPFS_POSIX_ACL
    scripts/config -e EXT4_FS_POSIX_ACL
    scripts/config -e EXT4_FS_SECURITY
    scripts/config -e XFS_POSIX_ACL
    scripts/config -e BTRFS_FS_POSIX_ACL
    scripts/config -e SECCOMP
    scripts/config -e SECCOMP_FILTER
    scripts/config -e CHECKPOINT_RESTORE

    # Required for CPUShares= in resource control unit settings
    scripts/config -e CGROUP_SCHED
    scripts/config -e FAIR_GROUP_SCHED

    # Required for CPUQuota= in resource control unit settings
    scripts/config -e CFS_BANDWIDTH

    # Required for IPAddressDeny=, IPAddressAllow= in resource control unit settings
    scripts/config -e CGROUP_BPF

    # For UEFI systems
    scripts/config -e EFIVAR_FS
    scripts/config -e EFI_PARTITION

    # RT group scheduling (effectively) makes RT scheduling unavailable for userspace
    scripts/config -d RT_GROUP_SCHED

    # Required for 3D acceleration in qemu
    scripts/config -e CONFIG_DRM_VIRTIO_GPU

    # Required for systemd-nspawn
    scripts/config -e DEVPTS_MULTIPLE_INSTANCES

    # Sound with QEMU
    scripts/config -e SND_HDA_GENERIC

    scripts/config -e MMC
    scripts/config -m PWRSEQ_SD8787
    scripts/config -e MMC_BLOCK_MINORS=32
    scripts/config -m SDIO_UART
    scripts/config -e MMC_SDHCI
    scripts/config -e MMC_SDHCI_PCI
    scripts/config -e MMC_SDHCI_ACPI
    scripts/config -e MMC_SDHCI_PLTFM
    scripts/config -e MMC_SDHCI_OF_ARASAN
    scripts/config -e MMC_SPI
    scripts/config -e MMC_DW
    scripts/config -e MMC_DW_PCI
    scripts/config -e MMC_DW_ROCKCHIP

    scripts/config -d DRM_LIMA

    scripts/config -e DRM_PANFROST
    scripts/config -m DRM_MALI_DISPLAY
    scripts/config -m DRM_ANALOGIX_ANX78XX
    scripts/config -m DRM_DW_HDMI_CEC
    scripts/config -e DRM_LOAD_EDID_FIRMWARE

    scripts/config -m BATTERY_CW2015

    scripts/config -e FIRMWARE_EDID

    scripts/config -m CRYPTO_DEV_ROCKCHIP
    scripts/config -e PCIE_ROCKCHIP_HOST
    scripts/config -e PHY_ROCKCHIP_DP
    scripts/config -e PHY_ROCKCHIP_INNO_HDMI
    scripts/config -e PHY_ROCKCHIP_PCIE
    scripts/config -e ROCKCHIP_LVDS
    scripts/config -e ROCKCHIP_MBOX
    scripts/config -e ROCKCHIP_RGB
    scripts/config -m SND_SOC_ROCKCHIP_MAX98090
    scripts/config -m SND_SOC_ROCKCHIP_PDM
    scripts/config -m VIDEO_ROCKCHIP_RGA
    scripts/config -e ROCKCHIP_SUSPEND_MODE
    scripts/config -e ROCKCHIP_SIP

    scripts/config -e DRM_PANEL
    scripts/config -m DRM_PANEL_LVDS
    scripts/config -m DRM_PANEL_SIMPLE

    scripts/config -m HID_MULTITOUCH

    scripts/config -m SND_SOC_ES8316
    scripts/config -m SND_SOC_SIMPLE_AMPLIFIER
    scripts/config -m SND_SIMPLE_CARD

    scripts/config -e CHARGER_GPIO
    scripts/config -m PWRSEQ_SD8787
    scripts/config -m PWRSEQ_SIMPLE
    scripts/config -e GPIO_SYSCON

    scripts/config -e RTC_DRV_RK808

    scripts/config -e WIRELESS
    scripts/config -m CFG80211
    scripts/config -e CFG80211_WEXT
    scripts/config -e MAC80211
    scripts/config -e NETDEVICES
    scripts/config -e WLAN

  build-commands:
  - |
    make

  install-commands:
  - |
    install -Dm644 "%{image-name}" '%{install-root}%{bootdir}/vmlinuz'
    install -Dm644 System.map '%{install-root}%{bootdir}/System.map'
    make INSTALL_MOD_PATH='%{install-root}%{prefix}' modules_install

    rm %{install-root}%{indep-libdir}/modules/*/{source,build}

  - |
    make INSTALL_DTBS_PATH='%{install-root}%{bootdir}/dtbs' dtbs_install

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
