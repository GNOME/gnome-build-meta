kind: meson

sources:
- kind: tar
  url: gnome_downloads:tracker/3.5/tracker-3.5.3.tar.xz
  ref: 1466c8b0897be5d9e056d87e10ad58927b588033f01af2f1a656a8921c3a28ee
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
