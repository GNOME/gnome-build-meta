kind: meson

sources:
- kind: git_repo
  url: gnome:tinysparql.git
  track: main
  ref: 3.10.alpha-0-ga7aa19e7b0af00346cf7d900ce381c4660f8a07f

build-depends:
- core-deps/graphviz.bst
- sdk/gi-docgen.bst
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
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Davahi=disabled
    -Dunicode_support=icu
    -Dstemmer=disabled
