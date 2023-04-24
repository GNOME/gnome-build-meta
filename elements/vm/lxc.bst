kind: autotools

sources:
- kind: tar
  url: linuxcontainers:lxc/lxc-4.0.12.tar.gz
  ref: db242f8366fc63e8c7588bb2017b354173cf3c4b20abc18780debdc48b14d3ef

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
    --with-pamdir=%{libdir}/security

public:
  initial-script:
    script: |
      #!/bin/bash
      sysroot="${1}"
      chmod 4755 "${sysroot}%{libexecdir}/lxc/lxc-user-nic"
