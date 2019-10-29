kind: autotools
sources:
- kind: tar
  url: github_com:ibus/ibus-anthy/releases/download/1.5.11/ibus-anthy-1.5.11.tar.gz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/ibus.bst
- sdk/pygobject.bst
- world/anthy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --enable-private-png=yes
    --with-python=python3
