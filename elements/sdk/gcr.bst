kind: meson

sources:
- kind: tar
  url: gnome_downloads:gcr/3.41/gcr-3.41.0.tar.xz
  ref: 0909fc49ea8ad4832d27564ff2fd1dc666696e2a07c73941c48829e60572da01
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libsecret.bst
- freedesktop-sdk.bst:components/gnupg.bst
- freedesktop-sdk.bst:components/openssh.bst
- freedesktop-sdk.bst:components/p11-kit.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:bootstrap-import.bst

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libgck-1.so'
        - '%{libdir}/libgcr-3.so'
        - '%{libdir}/libgcr-base-3.so'
        - '%{libdir}/libgcr-ui-3.so'
