kind: autotools

sources:
- kind: tar
  url: github_com:ostreedev/ostree/releases/download/v2021.2/libostree-2021.2.tar.xz
  ref: 854008e7c71d44f6b3670f0e9b8500db0f08ff8b297d0b30a7cb9a66f34c5d7c
- kind: patch
  path: files/ostree/no-boot-symlink.patch

build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/git-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- sdk/glib.bst
- sdk/libsoup-2.4.bst
- freedesktop-sdk.bst:components/avahi.bst
- freedesktop-sdk.bst:components/e2fsprogs.bst
- freedesktop-sdk.bst:components/fuse.bst
- freedesktop-sdk.bst:components/gpgme.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/dracut.bst

variables:
  conf-local: >-
    --with-dracut
    --with-libsystemd
    --with-systemd
    --with-libarchive
    --with-avahi

public:
  bst:
    split-rules:
      devel:
        (>):
        - "%{libdir}/libostree.so"
