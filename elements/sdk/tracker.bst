kind: meson

sources:
- kind: git_tag
  url: gnome:tracker.git
  track: master
  ref: 3.6.alpha-8-gcd7814bb99e3de1eee6b8691f6dc7e641173a351
- kind: git_module
  url: gnome:gvdb.git
  path: subprojects/gvdb
  ref: 0854af0fdb6d527a8d1999835ac2c5059976c210

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
