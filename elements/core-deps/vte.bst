kind: meson

sources:
- kind: tar
  url: gnome_downloads:vte/0.79/vte-0.79.90.tar.xz
  ref: d1309771887bb425b910d74f506d6d7135c36df996e440c68ca278349d85d184
build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/gtk.bst
- core-deps/fast-float.bst
- freedesktop-sdk.bst:components/fribidi.bst
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:components/icu.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dgtk4=true
    -Ddocs=true
    -Dglade=false

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{bindir}/vte-2.91-gtk4'
        - '%{bindir}/vte-2.91'
        - '%{datadir}/applications/vte-gtk3.desktop '
        - '%{datadir}/applications/vte-gtk4.desktop '
        - '%{libdir}/libvte-2.91.so'
