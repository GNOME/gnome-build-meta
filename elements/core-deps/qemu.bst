kind: autotools

sources:
- kind: tar
  url: qemu:qemu-10.0.3.tar.xz
  ref: 5c891267b1534a774465db8b1a0dfcb0c5e6d7ecb6f71345625adf4e0889945b
- kind: patch
  path: patches/qemu/6ad034e71232c2929ed546304c9d249312bb632f.patch

build-depends:
- core-deps/spice-protocol.bst
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
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
- freedesktop-sdk.bst:components/libpulse.bst
- freedesktop-sdk.bst:components/libslirp.bst
- freedesktop-sdk.bst:components/liburing.bst
- freedesktop-sdk.bst:components/pipewire.bst
- freedesktop-sdk.bst:components/pixman.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/sdl2-compat.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  (?):
  - arch == "x86_64":
      targets: --target-list=x86_64-softmmu,i386-softmmu
  - arch == "aarch64":
      targets: --target-list=aarch64-softmmu,arm-softmmu
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
    --disable-sdl-image
    --enable-virglrenderer
    --enable-slirp
    --enable-pa
    --enable-pipewire
    --enable-linux-io-uring

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

config:
  install-commands:
    (>):
    # FIXME: we should remove everything we do not support
    # hppa-firmware*.img cause errors with freedesktop-sdk-stripper.
    - rm '%{install-root}'/usr/share/qemu/hppa-firmware*.img

public:
  initial-script:
    script: |
      #!/bin/bash
      set -eu
      sysroot="${1}"
      chmod 4755 "${sysroot}%{libexecdir}/qemu-bridge-helper"
