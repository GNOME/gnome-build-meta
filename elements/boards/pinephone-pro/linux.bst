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
