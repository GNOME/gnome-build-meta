kind: meson

sources:
- kind: git_repo
  url: codeberg:DylanVanAssche/libssc.git
  track: 'v*'
  ref: v0.3.0-0-g256552587dfb0653a7cddec6145826533d42b26e

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- core-deps/libqmi.bst
- core-deps/protobuf-c.bst
