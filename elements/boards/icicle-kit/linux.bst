kind: manual

sources:
- kind: git_tag
  url: git@gitlab.codethink.co.uk:codethink/riscv/co088_group/linux_kernel.git
  track: bjdooks/mpfs-512-pcie1
  track-tags: false
  directory: linux
- kind: local
  path: files/boards/icicle-kit/linux/
  directory: linux
- kind: git_tag
  url: git://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git
  track: master
  directory: linux-firmware

depends:
- freedesktop-sdk.bst:components/kmod.bst

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:components/bc.bst
- freedesktop-sdk.bst:components/gzip.bst
- freedesktop-sdk.bst:components/dtc.bst
- boards/icicle-kit/u-boot.bst

variables:
  bootdir: /boot
  kernel_arch: riscv
  image-name: arch/riscv/boot/Image
  command-subdir: linux

environment:
  ARCH: '%{kernel_arch}'

config:
  configure-commands:
  - |
    # Generate the default kernel config for the target architecture
    make icicle_kit_amdgpu_defconfig

  build-commands:
  - |
    make Image modules dtbs
  - |
    ./mkfit.sh

  install-commands:
  - |
    install -Dm644 output.fit '%{install-root}%{bootdir}/output.fit'
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
