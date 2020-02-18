kind: autotools
sources:
- kind: tar
  url: github_com:ibus/ibus/releases/download/1.5.20/ibus-1.5.20.tar.gz
  ref: 4cf1e5ca4b067a3bed3cdfa658d49ac597d817b2de627a1095214565f862d034
depends:
- sdk/dconf.bst
- sdk/glib.bst
- filename: sdk/gobject-introspection.bst
  type: build
- sdk/gtk+-3.bst
- sdk/libnotify.bst
- filename: components/iso-codes.bst
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
    --enable-dconf
    --disable-memconf
    --disable-ui
    --disable-gtk2
    --disable-schema-compile
    --with-python=python3
    --disable-emoji-dict
    --disable-unicode-dict
