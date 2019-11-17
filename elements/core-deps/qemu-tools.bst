kind: autotools

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/libcap.bst
- freedesktop-sdk.bst:components/python3.bst
- sdk/glib.bst
- freedesktop-sdk.bst:components/pixman.bst

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

variables:
  conf-local: >-
    --disable-werror
    --disable-system
    --disable-user
    --disable-blobs
    --enable-tools

  # This is not using autoconf and does not support for example
  # --exec-prefix
  conf-deterministic: ''
  conf-link-args: ''
  conf-libtool-force-dlsearch: ''
  conf-args: >-
    --prefix=%{prefix}
    --bindir=%{bindir}
    --sbindir=%{sbindir}
    --sysconfdir=%{sysconfdir}
    --datadir=%{datadir}
    --includedir=%{includedir}
    --libdir=%{libdir}
    --libexecdir=%{libexecdir}
    --localstatedir=%{localstatedir}
    --sharedstatedir=%{sharedstatedir}
    --mandir=%{mandir}
    --infodir=%{infodir}
    --localstatedir=/
    --host=%{triplet}
    --build=%{triplet}
    %{conf-extra}
    %{conf-local}

sources:
- kind: tar
  url: https://download.qemu.org/qemu-4.2.0.tar.xz
