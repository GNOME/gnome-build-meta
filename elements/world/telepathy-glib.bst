kind: autotools
sources:
- kind: git_tag
  url: github_com:TelepathyIM/telepathy-glib.git
  track: master
depends:
- core-deps/avahi.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/vala.bst
- world/dbus-glib.bst
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: >-
    --enable-vala-bindings
    --disable-fatal-warnings
