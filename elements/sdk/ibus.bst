kind: autotools
sources:
- kind: tar
  url: github_com:ibus/ibus/releases/download/1.5.17/ibus-1.5.17.tar.gz
depends:
- sdk/dconf.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/libnotify.bst
- filename: base/intltool.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-tests --disable-gconf --enable-dconf --disable-memconf --disable-ui
    --disable-gtk2 --disable-schema-compile --with-python=python3 --disable-emoji-dict
