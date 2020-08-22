kind: autotools

sources:
- kind: tar
  url: https://download.qemu.org/qemu-5.0.0.tar.xz

  ref: 2f13a92a0fa5c8b69ff0796b59b86b080bbb92ebad5d301a7724dd06b5e78cb6
build-depends:
- core-deps/spice-protocol.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- sdk/gtk+-3.bst
- core-deps/libcacard.bst
- core-deps/spice-server.bst
- core-deps/usbredir.bst
- freedesktop-sdk.bst:components/glib.bst
- freedesktop-sdk.bst:components/libcap.bst
- freedesktop-sdk.bst:components/dummy-gbm.bst
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
    %{conf-extra}
    %{conf-local}
