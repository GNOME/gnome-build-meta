kind: manual

sources:
- kind: git_tag
  url: https://gitlab.manjaro.org/tsys/linux-pinebook-pro.git
  #track: master
  track: 93293259039d6fc3a725961d42b4f11bfc3f5127
  track-tags: false

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
    scripts/config -e VIRTIO_PCI

    # Strongly Recommended
    scripts/config -e IPV6
    scripts/config -e AUTOFS4_FS
    scripts/config -e TMPFS_XATTR
    scripts/config -e TMPFS_POSIX_ACL
    scripts/config -e EXT4_FS_POSIX_ACL
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

    scripts/config -e HIDRAW

    scripts/config -m HID_A4TECH
    scripts/config -m HID_ACCUTOUCH
    scripts/config -e HID_ACRUX_FF
    scripts/config -m HID_ACRUX
    scripts/config -m HID_ALPS
    scripts/config -m HID_APPLEIR
    scripts/config -m HID_APPLE
    scripts/config -m HID_AUREAL
    scripts/config -e HID_BATTERY_STRENGTH
    scripts/config -m HID_BELKIN
    scripts/config -m HID_BETOP_FF
    scripts/config -m HID_CHERRY
    scripts/config -m HID_CHICONY
    scripts/config -m HID_CMEDIA
    scripts/config -m HID_CORSAIR
    scripts/config -m HID_COUGAR
    scripts/config -m HID_CP2112
    scripts/config -m HID_CYPRESS
    scripts/config -m HID_DRAGONRISE
    scripts/config -m HID_ELECOM
    scripts/config -m HID_ELO
    scripts/config -m HID_EMS_FF
    scripts/config -m HID_EZKEY
    scripts/config -m HID_GEMBIRD
    scripts/config -m HID_GFRM
    scripts/config -m HID_GREENASIA
    scripts/config -m HID_GT683R
    scripts/config -m HID_GYRATION
    scripts/config -m HID_HOLTEK
    scripts/config -m HID_ICADE
    scripts/config -m HID_ITE
    scripts/config -m HID_JABRA
    scripts/config -m HID_KENSINGTON
    scripts/config -m HID_KEYTOUCH
    scripts/config -m HID_KYE
    scripts/config -m HID_LCPOWER
    scripts/config -m HID_LENOVO
    scripts/config -m HID_LOGITECH_DJ
    scripts/config -m HID_LOGITECH
    scripts/config -m HID_MACALLY
    scripts/config -m HID_MAGICMOUSE
    scripts/config -m HID_MALTRON
    scripts/config -m HID_MAYFLASH
    scripts/config -m HID_MICROSOFT
    scripts/config -m HID_MONTEREY
    scripts/config -m HID_MULTITOUCH
    scripts/config -m HID_NTI
    scripts/config -m HID_NTRIG
    scripts/config -m HID_ORTEK
    scripts/config -m HID_PANTHERLORD
    scripts/config -m HID_PENMOUNT
    scripts/config -m HID_PETALYNX
    scripts/config -e HID_PICOLCD_BACKLIGHT
    scripts/config -e HID_PICOLCD_CIR
    scripts/config -e HID_PICOLCD_FB
    scripts/config -e HID_PICOLCD_LCD
    scripts/config -e HID_PICOLCD_LEDS
    scripts/config -m HID_PICOLCD
    scripts/config -e HID_PID
    scripts/config -m HID_PLANTRONICS
    scripts/config -m HID_PRIMAX
    scripts/config -m HID_PRODIKEYS
    scripts/config -m HID_REDRAGON
    scripts/config -m HID_RETRODE
    scripts/config -m HID_RMI
    scripts/config -m HID_ROCCAT
    scripts/config -m HID_SAITEK
    scripts/config -m HID_SAMSUNG
    scripts/config -m HID_SENSOR_ACCEL_3D
    scripts/config -m HID_SENSOR_ALS
    scripts/config -m HID_SENSOR_CUSTOM_SENSOR
    scripts/config -m HID_SENSOR_DEVICE_ROTATION
    scripts/config -m HID_SENSOR_GYRO_3D
    scripts/config -m HID_SENSOR_HUB
    scripts/config -m HID_SENSOR_HUMIDITY
    scripts/config -m HID_SENSOR_INCLINOMETER_3D
    scripts/config -m HID_SENSOR_MAGNETOMETER_3D
    scripts/config -m HID_SENSOR_PRESS
    scripts/config -m HID_SENSOR_PROX
    scripts/config -m HID_SENSOR_TEMP
    scripts/config -m HID_SMARTJOYPLUS
    scripts/config -m HID_SONY
    scripts/config -m HID_SPEEDLINK
    scripts/config -m HID_STEAM
    scripts/config -m HID_STEELSERIES
    scripts/config -m HID_SUNPLUS
    scripts/config -m HID_THINGM
    scripts/config -m HID_THRUSTMASTER
    scripts/config -m HID_TIVO
    scripts/config -m HID_TOPSEED
    scripts/config -m HID_TWINHAN
    scripts/config -m HID_U2FZERO
    scripts/config -m HID_UCLOGIC
    scripts/config -m HID_UDRAW_PS3
    scripts/config -m HID_VIEWSONIC
    scripts/config -m HID_WACOM
    scripts/config -m HID_WALTOP
    scripts/config -m HID_WIIMOTE
    scripts/config -m HID_XINMO
    scripts/config -m HID_ZEROPLUS
    scripts/config -m HID_ZYDACRON

    scripts/config -e WIRELESS
    scripts/config -m CFG80211
    scripts/config -e CFG80211_WEXT
    scripts/config -e MAC80211
    scripts/config -e NETDEVICES
    scripts/config -e WLAN

    scripts/config -m SND_SOC_ES8316
    scripts/config -m SND_SOC_SIMPLE_AMPLIFIER
    scripts/config -m SND_SIMPLE_CARD

    scripts/config -e CHARGER_GPIO
    scripts/config -m PWRSEQ_SD8787
    scripts/config -m PWRSEQ_SIMPLE
    scripts/config -e GPIO_SYSCON

    scripts/config -e RTC_DRV_RK808

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
