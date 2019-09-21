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
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: >-
    --disable-tests
    --disable-gconf
    --enable-dconf
    --disable-memconf
    --disable-ui
    --disable-gtk2
    --disable-schemas-compile
    --with-python=python3
    --disable-emoji-dict
    --disable-appindicator
    --disable-glibtest
    --disable-unicode-dict
    --disable-python2
    --enable-gtk-doc
    --enable-wayland
    --enable-introspection

config:
  install-commands:
    (>):
    - echo "NoDisplay=true" >> "%{install-root}%{datadir}/applications/org.freedesktop.IBus.Setup.desktop"

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libibus-1.0.so'
        - '%{bindir}/ibus'
