kind: meson

sources:
- kind: git_repo
  url: gnome:grilo-plugins.git
  track: master
  ref: grilo-plugins-0.3.18-1-g97f16b7ad22a4585990e02a66fc5fc861ed43b9e

build-depends:
- core-deps/localsearch.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gnome-online-accounts.bst
- core-deps/gom.bst
- core-deps/grilo.bst
- core-deps/libmediaart.bst
- core-deps/totem-pl-parser.bst
- sdk/json-glib.bst
- sdk/libsoup.bst
- sdk/tinysparql.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Denable-lua-factory=no
    -Denable-tracker=no
    -Denable-tracker3=yes
