kind: meson

sources:
- kind: tar
  url: gnome_downloads:blueprint-compiler/0.22/blueprint-compiler-0.22.2.tar.xz
  ref: 231d72efbac931c235ac3e022fe94982095c20d88721d9a8dcf60152f2017e07
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst

depends:
- sdk/pygobject.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
