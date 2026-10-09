kind: meson

sources:
- kind: git_repo
  url: gnome:grilo-plugins.git
  track: master
  ref: grilo-plugins-0.3.18-18-g8ccac2544a0172be38ba6a73af38b485fd9257fa

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- core-deps/localsearch.bst
- freedesktop-sdk.bst:components/itstool.bst

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
