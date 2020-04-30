kind: autotools

sources:
- kind: tar
  url: gnome_downloads:ostree/2014.4/ostree-2014.4.tar.xz
  ref: 13a1eed9bfcc95e75cf027e2b7252048d206d0eb28371b587e2b0a4cc9835e32
- kind: patch
  path: files/ostree/no-boot-symlink.patch

build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/git.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- core-deps/fuse.bst
- core-deps/avahi.bst
- sdk/glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:components/e2fsprogs.bst
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
        - '%{libdir}/libostree.so'
