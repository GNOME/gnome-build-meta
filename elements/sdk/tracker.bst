kind: meson

sources:
- kind: git_repo
  url: gnome:tracker.git
  track: master
  ref: 3.7.0-0-g86ebd86cb4e51dfd9ab702911dd2e99f7128046b
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
    -Davahi=disabled
    -Dunicode_support=icu
    -Dstemmer=disabled
