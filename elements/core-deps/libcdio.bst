kind: autotools
sources:
- kind: tar
  url: 
    github_files:libcdio/libcdio/releases/download/2.2.0/libcdio-2.2.0.tar.bz2
  ref: 6f8fbdf4d189cf63f2a7a1549c516cd720c7b222c7aaadbc924a26e745a48539
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
variables:
  conf-local: >-
    --without-cdda-player
  local_flags: >-
    -Wno-error=implicit-function-declaration
