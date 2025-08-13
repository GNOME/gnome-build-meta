kind: meson

sources:
- kind: tar
  url: github_files:catchorg/Catch2/archive/refs/tags/v3.9.1.tar.gz
  ref: a215c2a723bd7483efd236dc86066842a389cb4e344c61119c978acdf24d39be

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
