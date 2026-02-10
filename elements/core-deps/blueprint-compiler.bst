kind: meson

sources:
- kind: tar
  url: gnome_downloads:blueprint-compiler/0.19/blueprint-compiler-0.19.0.tar.xz
  ref: 22868d1d2a5e2bd78b901d51dda1f227f3471000e83596a49d57c5f88905f71a

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/pygobject.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
