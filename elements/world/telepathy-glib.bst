kind: autotools
sources:
- kind: git_tag
  url: github_com:TelepathyIM/telepathy-glib.git
  track: master
build-depends:
- sdk/gtk-doc.bst
depends:
- core-deps/avahi.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- world/dbus-glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --enable-vala-bindings
    --disable-fatal-warnings
