kind: autotools
sources:
- kind: tar
  url: github_com:ibus/ibus/releases/download/1.5.20/ibus-1.5.20.tar.gz
depends:
- sdk/dconf.bst
- sdk/glib.bst
- filename: sdk/gobject-introspection.bst
  type: build
- filename: sdk/gtk-doc.bst
  type: build
- sdk/gtk+-3.bst
- sdk/libnotify.bst
- filename: components/iso-codes.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/wayland.bst
  junction: freedesktop-sdk.bst
- filename: components/wayland-protocols.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: >-
    --disable-tests
    --disable-gconf
    --disable-memconf
    --disable-ui
    --disable-gtk2
    --disable-emoji-dict
    --disable-appindicator
    --disable-glibtest
    --disable-unicode-dict
    --disable-python2
    --with-python=python3
    --enable-dconf
    --enable-gtk-doc
    --enable-wayland
    --enable-introspection

