kind: make

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/cpio.bst  # loongarch64 build enabled CONFIG_IKHEADERS by default
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:components/bc.bst
- freedesktop-sdk.bst:components/gzip.bst
- freedesktop-sdk.bst:components/pahole.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/rsync.bst
- freedesktop-sdk.bst:components/util-linux.bst
- freedesktop-sdk.bst:components/zstd.bst
- filename: freedesktop-sdk.bst:components/linux-module-cert.bst
  strict: true

variables:
  bootdir: /boot
  kernel_arch: 'arm64'
  src-arch: '%{kernel_arch}'
  image-name: '$(make -s image_name)'
  optimize-debug: false

environment:
  ARCH: '%{kernel_arch}'
  # compile.h has hardcoded timestamp, let's seed it
  KBUILD_BUILD_TIMESTAMP: 'Thu Nov 10 15:00:00 UTC 2011'
  KBUILD_BUILD_USER: 'tomjon'
  MAXJOBS: "%{max-jobs}"

environment-nocache:
- MAXJOBS

config:
  configure-commands:
  - |
    # Generate the default kernel config for the target architecture
    make fp5_defconfig

  # - |
  #   . ./config-utils.sh
  #   rm -f expected-configs
  #   . ./fdsdk-config.sh "%{arch}"

  # - |
  #   make -j1 olddefconfig

  # - |
  #   . ./config-utils.sh

  #   missing_configs=0
  #   for config in $(cat expected-configs); do
  #     if ! has "${config}"; then
  #       echo "Missing ${config}" 1>&2
  #       missing_configs=1
  #     fi
  #   done
  #   # Only fail for...
  #   case "%{arch}" in
  #     x86_64|aarch64)
  #       [ "${missing_configs}" = 0 ]
  #     ;;
  #   esac

  install-commands:
  - |
    install -Dm644 "%{image-name}" '%{install-root}%{bootdir}/vmlinuz'
    install -Dm644 vmlinux '%{install-root}%{bootdir}/vmlinux'
    install -Dm644 System.map '%{install-root}%{bootdir}/System.map'
    install -Dm644 .config '%{install-root}%{bootdir}/config'
    make -j1 INSTALL_MOD_PATH='%{install-root}%{prefix}' modules_install

  - |
    release=$(make -s kernelrelease)
    targetdir="%{install-root}%{prefix}/src/linux-${release}"

    rm "%{install-root}%{indep-libdir}/modules/${release}"/build

    to_copy=(
      Makefile
      Module.symvers
      .config
      "arch/%{src-arch}/include"
      "arch/%{src-arch}/Makefile"
      scripts
      include
    )
    if [ "$(scripts/config -s OBJTOOL)" = y ]; then
      to_copy+=(tools/objtool/objtool)
    fi
    for file in "${to_copy[@]}"
    do
      targetfile="${targetdir}/${file}"
      dir="$(dirname "${targetfile}")"
      [ -d "${dir}" ] || install -d "${dir}"
      cp -aT "${file}" "${targetfile}"
    done

    ln -sr "${targetdir}" "%{install-root}%{indep-libdir}/modules/${release}/build"

  - |
    %{install-extra}

  (?):
  - arch in ["aarch64", "riscv64"]:
      install-commands:
        (>):
        - |
          make -j1 INSTALL_DTBS_PATH='%{install-root}%{bootdir}/dtbs' dtbs_install

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{bootdir}/System.map'
    overlap-whitelist:
    - "%{project_licensedir}"
    - "%{project_licensedir}/**"

sources:
  # Please do not move the kernel config to linux.yml. Each time we
  # tweak the configuration, we need would need to rebuild:
  # bpf -> systemd -> gtk -> webkitgtk...
- kind: git_repo
  url: github:sc7280-mainline/linux.git
  track: sc7280-6.16.y
  ref: b4c351ee82eb6baeb91028dc13dfaa2e2b0450e4
  ref-format: sha1
  # - kind: local
  #   path: files/linux/config-utils.sh
  # - kind: local
  #   path: files/linux/fdsdk-config.sh
