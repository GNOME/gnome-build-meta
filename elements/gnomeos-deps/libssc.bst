kind: meson

sources:
- kind: git_repo
  url: codeberg:DylanVanAssche/libssc.git
  track: 'v*'
  ref: v0.4.4-0-g0cf77b93b55752da34dca2dcecc06fca8665184b

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- core-deps/libqmi.bst
- core-deps/protobuf-c.bst
