kind: autotools
sources:
- kind: tar
  url: github_com:ibus/ibus/releases/download/1.5.20/ibus-1.5.20.tar.gz
  ref: 4cf1e5ca4b067a3bed3cdfa658d49ac597d817b2de627a1095214565f862d034
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
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libibus-1.0.so'
