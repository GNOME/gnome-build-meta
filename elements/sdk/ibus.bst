kind: autotools
sources:
- kind: tar
  url: github_com:ibus/ibus/releases/download/1.5.22/ibus-1.5.22.tar.gz
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/iso-codes.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/dconf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libnotify.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --disable-appindicator
    --disable-dconf
    --disable-emoji-dict
    --disable-engine
    --disable-tests
    --disable-gconf
    --disable-gtk2
    --disable-gtk-doc
    --disable-glibtest
    --disable-libnotify
    --disable-memconf
    --disable-python2
    --disable-schema-compile
    --disable-static
    --disable-setup
    --disable-ui
    --disable-unicode-dict
    --with-python=python3
    --enable-wayland
    --enable-introspection

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libibus-1.0.so'
