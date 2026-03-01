kind: meson

sources:
- kind: tar
  url: gnome_downloads:blueprint-compiler/0.20/blueprint-compiler-0.20.0.tar.xz
  ref: ec786d66f583e8296c845f1f82834d27b369f39d55a6380b34880493e22db382
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/pygobject.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
