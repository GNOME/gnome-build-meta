kind: autotools

sources:
- kind: tar
  url: https://download.qemu.org/qemu-4.2.0.tar.xz

  ref: d3481d4108ce211a053ef15be69af1bdd9dde1510fda80d92be0f6c3e98768f0
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/libcap.bst
- freedesktop-sdk.bst:components/pixman.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:bootstrap-import.bst

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

variables:
  localstatedir: '/'
  conf-local: >-
    --disable-werror
    --disable-system
    --disable-user
    --disable-blobs
    --enable-tools

  # This is not using autoconf and does not support for example
  # --exec-prefix
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
    --host=%{triplet}
    --build=%{triplet}
    %{conf-local}
