kind: autotools

sources:
- kind: tar
  url: qemu:qemu-8.2.6.tar.xz
  ref: 8cadb1e6b039954e672d4a7cc3a5f30738b4cb99bc92c2640b15cc89f8f91fa2
build-depends:
- core-deps/spice-protocol.bst
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk+-3.bst
- core-deps/libcacard.bst
- core-deps/spice.bst
- core-deps/usbredir.bst
- core-deps/virglrenderer.bst
- freedesktop-sdk.bst:components/dtc.bst
- freedesktop-sdk.bst:components/dummy-gbm.bst
- freedesktop-sdk.bst:components/glib.bst
- freedesktop-sdk.bst:components/libcap.bst
- freedesktop-sdk.bst:components/libslirp.bst
- freedesktop-sdk.bst:components/pixman.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/sdl2.bst
- freedesktop-sdk.bst:components/sdl2-image.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  (?):
  - arch == "x86_64":
      targets: --target-list=x86_64-softmmu,i386-softmmu
  - arch == "i686":
      targets: --target-list=x86_64-softmmu,i386-softmmu
  - arch == "aarch64":
      targets: --target-list=aarch64-softmmu,arm-softmmu
  - arch == "arm":
      targets: --target-list=arm-softmmu
  - arch == "ppc64le":
      targets: --target-list=ppc64-softmmu
  - arch == "riscv64":
      targets: --target-list=riscv64-softmmu

  conf-local: >-
    --disable-werror
    --enable-system
    --disable-user
    --enable-spice
    --enable-smartcard
    --enable-usb-redir
    --enable-gtk
    --enable-sdl
    --enable-sdl-image
    --enable-virglrenderer
    --enable-slirp

  # --exec-prefix --disable-static are not accepted
  conf-args: >-
    %{targets}
    --prefix="%{prefix}"
    --bindir="%{bindir}"
    --sbindir="%{sbindir}"
    --sysconfdir="%{sysconfdir}"
    --datadir="%{datadir}"
    --includedir="%{includedir}"
    --libdir="%{libdir}"
    --libexecdir="%{libexecdir}"
    --localstatedir="%{localstatedir}"
    --sharedstatedir="%{sharedstatedir}"
    --mandir="%{mandir}"
    --infodir="%{infodir}"
    --localstatedir=/
    --host=%{triplet}
    --build=%{triplet}
    %{conf-local}

public:
  initial-script:
    script: |
      #!/bin/bash
      set -eu
      sysroot="${1}"
      chmod 4755 "${sysroot}%{libexecdir}/qemu-bridge-helper"
