kind: meson

sources:
- kind: git_repo
  url: gnome:tinysparql.git
  track: main
  ref: 3.10.0-32-gcd880928f1625f6685f4fde08f1d167efc53c014
# Need to be updated manually until we get a meson wrap source
- kind: remote
  url: snowballstem:libstemmer_c-3.0.1.tar.gz
  ref: 419db89961cf2e30e6417265a4f3c903632d47d6917e7f8c6ae0e4d998743aad
  directory: subprojects/packagecache

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
