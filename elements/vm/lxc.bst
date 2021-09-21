kind: autotools

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/systemd.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:components/libseccomp.bst
- freedesktop-sdk.bst:components/linux-pam-base.bst

variables:
  conf-local: >-
    --disable-werror
    --with-init-script=systemd
    --enable-seccomp
    --enable-capabilities
    --enable-pam

public:
  initial-script:
    script: |
      #!/bin/bash
      sysroot="${1}"
      chmod 4755 "${sysroot}%{libexecdir}/lxc/lxc-user-nic"

sources:
- kind: tar
  url: https://linuxcontainers.org/downloads/lxc/lxc-4.0.10.tar.gz
  ref: a10c518056d2e497bd600e4ffac2853bdeab1e835bf455a6d87cc8df128bfae9
