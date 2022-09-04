kind: meson

sources:
- kind: tar
  url: gnome_downloads:gcr/3.92/gcr-3.92.0.tar.xz
  ref: 896abf8e1db0f40eb28073f364f36a72385ac8abf8cd1362b1016e97721ff518
build-depends:
- sdk-deps/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/gtk.bst
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
        - '%{libdir}/libgck-2.so'
        - '%{libdir}/libgcr-4.so'
        - '%{libdir}/libgcr-4-gtk3.so'
        - '%{libdir}/libgcr-4-gtk4.so'
