kind: autotools

sources:
- kind: tar
  url: github_files:ibus/ibus/releases/download/1.5.35/ibus-1.5.35.tar.gz
  ref: a4fe45deae5d751a3587a81deebe59e17962286f71af41675894fa2ab96f59f4

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
      ibus-license:
      - '%{project_licensedir}'
      - '%{project_licensedir}/**'
