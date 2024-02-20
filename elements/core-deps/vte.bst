kind: meson

sources:
- kind: git_repo
  url: gnome:vte.git
  track: master
  ref: 0.75.0-56-g2dfc0f7f6a40a3ef3285a315c6bd7a446816c0ea

build-depends:
- sdk-deps/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/gtk.bst
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
    overlap-whitelist:
    # https://gitlab.gnome.org/GNOME/vte/-/issues/2665
    - '%{datadir}/terminfo/x/xterm-256color'
    split-rules:
      devel:
        (>):
        - '%{libdir}/libvte-2.91.so'
