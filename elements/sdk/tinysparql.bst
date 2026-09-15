kind: meson

sources:
- kind: tar
  url: gnome_downloads:tinysparql/3.12/tinysparql-3.12.0.tar.xz
  ref: 40e3e3ae9811ae07a94ac7dfe8259f218679ebb1c9bc98d7ab345b2405926b57
- kind: remote
  url: snowballstem:libstemmer_c-3.0.1.tar.gz
  ref: 419db89961cf2e30e6417265a4f3c903632d47d6917e7f8c6ae0e4d998743aad
  directory: subprojects/packagecache

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- core-deps/graphviz.bst
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:components/asciidoc.bst
- freedesktop-sdk.bst:components/systemd.bst

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
