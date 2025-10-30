kind: meson

sources:
- kind: git_repo
  url: gnome:vte.git
  track: master
  ref: 0.81.0-38-g9d49c0f55b01f71fb3b2b079ff4d518f4fcdc2ed

build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gtk.bst
- core-deps/fast-float.bst
- core-deps/simdutf.bst
- freedesktop-sdk.bst:components/fmtlib.bst
- freedesktop-sdk.bst:components/fribidi.bst
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:components/icu.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dgtk3=false
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
