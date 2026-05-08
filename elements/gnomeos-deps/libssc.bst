kind: meson

sources:
- kind: git_repo
  url: codeberg:DylanVanAssche/libssc.git
  track: 'v*'
  ref: v0.4.3-0-g5538435e96646adcdc4a651fe4982a8e13c3ff5a

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst

depends:
- sdk/glib.bst
- core-deps/libqmi.bst
- core-deps/protobuf-c.bst
