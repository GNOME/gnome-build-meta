kind: autotools

sources:
- kind: tar
  url: github_files:ibus/ibus/releases/download/1.5.35-beta1/ibus-1.5.35-beta1.tar.gz
  ref: a254419e25597e6e56a7f14c9b9fcc2ab33e2cfed0c0357339b94b40fdd2da38

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst
- core-deps/dconf.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/gtk-doc.bst
- sdk/gtk.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/iso-codes.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  conf-local: >-
    --enable-dconf
    --enable-memconf
    --disable-appindicator
    --disable-emoji-dict
    --enable-engine
    --disable-tests
    --disable-gconf
    --disable-gtk2
    --disable-gtk-doc
    --disable-glibtest
    --disable-libnotify
    --disable-python2
    --disable-schema-compile
    --disable-setup
    --disable-ui
    --disable-unicode-dict
    --with-python=python3
    --enable-wayland
    --enable-introspection
    --enable-vala
    --enable-gtk4
    --enable-systemd

public:
  bst:
    split-rules:
      libibus:
      - '%{includedir}/**'
      - '%{libdir}/**'
      - '%{datadir}/gir-1.0/**'
      - '%{datadir}/gtk-doc/**'
      - '%{datadir}/vala/vapi/**'
