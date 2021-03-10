kind: autotools
sources:
- kind: git_tag
  url: github_com:TelepathyIM/telepathy-glib.git
  track: master
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- world/dbus-glib.bst
- freedesktop-sdk.bst:components/avahi.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --enable-vala-bindings
    --disable-fatal-warnings
