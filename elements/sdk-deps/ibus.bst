kind: autotools

sources:
- kind: git_repo
  url: github:ibus/ibus.git
  track: '*.*'
  exclude:
  - '*alpha*'
  - '*beta*'
  - '*rc*'
  ref: 1.5.34-0-g1f7af28437afd62a6d145bfc81035e698a37411d

build-depends:
- sdk/vala.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/iso-codes.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- core-deps/dconf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/gtk.bst
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
      - '%{datadir}/vala/vapi/**'
