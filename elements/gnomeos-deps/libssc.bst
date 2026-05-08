kind: meson

sources:
- kind: git_repo
  url: codeberg:DylanVanAssche/libssc.git
  track: 'v*'
  ref: v0.4.2-0-gfea9c0d9ecb5b8aecdf26554b26c1df6286526df

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst

depends:
- sdk/glib.bst
- core-deps/libqmi.bst
- core-deps/protobuf-c.bst
