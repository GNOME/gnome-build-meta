kind: meson

sources:
- kind: tar
  url: gnome_downloads:blueprint-compiler/0.18/blueprint-compiler-0.18.0.tar.xz
  ref: 4142b9017151a347ccdc2907ac033b18508363476b44a76d0420b4af420bd866

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/pygobject.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
