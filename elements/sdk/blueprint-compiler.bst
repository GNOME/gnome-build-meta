kind: meson

sources:
- kind: tar
  url: gnome_downloads:blueprint-compiler/0.20/blueprint-compiler-0.20.4.tar.xz
  ref: 1f1ecc84bcd698902d422f7de83d39229a209dd3016f6d2c3b0ed0ab123f6891
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/pygobject.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
