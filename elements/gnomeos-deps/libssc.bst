kind: meson

sources:
- kind: git_repo
  url: codeberg:DylanVanAssche/libssc.git
  track: 'v*'
  ref: v0.4.1-0-gfd58c74d81848a75cbe12b45e39486ebe7d89832

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- core-deps/libqmi.bst
- core-deps/protobuf-c.bst
