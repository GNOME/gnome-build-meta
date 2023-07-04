kind: meson

sources:
- kind: tar
  url: gnome_downloads:tracker/3.6/tracker-3.6.alpha.tar.xz
  ref: 8eb1054f84afd1f1a72e0d9afd5b44fb81e2f8d26863e43d567e88da656ef297
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:components/asciidoc.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/json-glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/icu.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Ddocs=false
    -Dunicode_support=icu
    -Dstemmer=disabled
