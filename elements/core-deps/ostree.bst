kind: autotools

sources:
- kind: tar
  url: github_com:ostreedev/ostree/releases/download/v2019.4/libostree-2019.4.tar.xz

build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/git.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- core-deps/fuse.bst
- sdk/glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:components/e2fsprogs.bst
- freedesktop-sdk.bst:components/gpgme.bst
- freedesktop-sdk.bst:bootstrap-import.bst

public:
  bst:
    split-rules:
      devel:
        (>):
        - "%{libdir}/libostree.so"
