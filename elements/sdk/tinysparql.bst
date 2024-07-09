kind: meson

sources:
- kind: tar
  url: gnome_downloads:tinysparql/3.8/tinysparql-3.8.alpha.tar.xz
  ref: fc4900f3214d177047aa6f2d55f792780b5555f07b17df6543882c6154f33fbf
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
    -Davahi=disabled
    -Dunicode_support=icu
    -Dstemmer=disabled
