kind: autotools

sources:
- kind: tar
  url: github_files:ibus/ibus/releases/download/1.5.35-alpha2/ibus-1.5.35-alpha2.tar.gz
  ref: afbb3a27abf406f890f5e4e69d4b1f22994d51f28d6a697121dbde6c14a06e41

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
